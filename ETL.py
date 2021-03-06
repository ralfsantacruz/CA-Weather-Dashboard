# !/usr/bin/env python
# coding: utf-8

# In[1]:


from sqlalchemy import create_engine
from sqlalchemy import types
from sqlalchemy.sql import text
import os

from graph_gen import pollution_epa
from config import pyowm_api_key

import pandas as pd
import numpy as np
import pyowm
import time

from timefunc import utc_to_pst_24

# In[2]:


# Establish connection to SQL
# engine = create_engine("mysql://root:password@localhost/weather_data")

# engine = create_engine("postgresql://postgres:password@localhost/weather_data")
engine= create_engine(os.environ['DATABASE_URL'])


# ### Consolidating scraping functions to update weather values:

# In[3]:


def get_weather_data(df):
    
    '''Takes in dataframe with city coordinates and returns of updated weather data for each city
        via OpenWeatherMap and Breezometer APIs.'''

    temperature = []
    clouds = []
    pressure = []
    rain = []
    date = []
    wind = []
    uv_index = []
    
    aqi = []
    category = []
    dominant_pollutant = []
    
    # Initialize connection to pyowm
    owm = pyowm.OWM(pyowm_api_key) 

    for city,lat,lng in zip(df['city'],df['lat'],df['lng']):
        print(f"Gathering data for {city}...")
        
        ## Make API calls to OpenWeatherMap: ##
        try:
            # Get weather and uv index data at coordinates specified.
            weather = owm.weather_at_coords(lat, lng)
            uvi = owm.uvindex_around_coords(lat, lng)
        except:
            print(f"Error adding data for {city}. Appending NaN for all OpenWeatherMap categories.")
            temperature.append(np.nan)
            clouds.append(np.nan)
            pressure.append(np.nan)
            date.append(np.nan)
            wind.append(np.nan)
            uv_index.append(np.nan)
            rain.append(np.nan)
        else:
            weather_data = weather.get_weather()
            
            # Add data to lists
            temperature.append(weather_data.get_temperature('fahrenheit')['temp'])
            clouds.append(weather_data.get_clouds())
            pressure.append(weather_data.get_pressure()['press'])
            date.append(weather_data.get_reference_time(timeformat='iso'))
            wind.append(weather_data.get_wind()['speed'])
            uv_index.append(uvi.get_value())

            precip = weather_data.get_rain()

            # Account for empty rain data.
            if precip == {}:
                rain.append(0)
            else:
                rain.extend([v for v in precip.values()])
        
        ## Make API calls to Breezometer for air quality data: ##
        data = pollution_epa(lat,lng)
        
        try:
            index = data['data']['indexes']['usa_epa']

            air_quality = index['aqi']
            categories = index['category']
            dom_pollutant = index['dominant_pollutant']

            aqi.append(air_quality)
            category.append(categories)
            dominant_pollutant.append(dom_pollutant)
            
        except:
            print(f"Error adding data for {city}. Appending NaN for all Breezometer categories.")
            aqi.append(np.nan)
            category.append(np.nan)
            dominant_pollutant.append(np.nan)
        
        # Sleep for 1.1 second. Limited to 60 API calls/min
        time.sleep(1.1)    
        
    return temperature,clouds,pressure,rain,date,wind,uv_index,aqi,category,dominant_pollutant


# In[4]:


def update_df(df):
    
    '''Updates dataframe columns with new weather data.'''
    
    temperature,clouds,pressure,rain,date,wind,uv_index,aqi,category,dominant_pollutant = get_weather_data(df)
    
    df['temperature'] = temperature
    df['cloud'] = clouds
    df['pressure'] = pressure
    df['rain'] = rain
    df['date'] = pd.to_datetime(date)
    df['wind_speed'] = wind
    df['uv_index'] = uv_index
    df['aqi'] = aqi
    df['category'] = category
    df['dominant_pollutant'] = dominant_pollutant
    
    # Drop any rows with NaN or NaT
    df = df.dropna()
    # make column for date scraped, but time is converted to PST.
    df['date_scraped'] = [utc_to_pst_24(df['date'][0]) for i in range(len(df['date']))]
    
    return df

# In[5]:


def format_date(df):
    ''' Formats date column if the date is not in datetime format.'''
    df['date'] = pd.to_datetime(df['date'])
    return df


# In[6]:


def push_to_sql(df,table_name):
    
    ''' Inserts dataframe rows into SQL table.'''
    
    # Get dictionaries for each row
    data = df.to_dict(orient='index').values()
    
    # Get column names as one string to pass into SQL statement
    columns = ','.join(df.columns)
    # Format column names to be passed as format strings in SQL statement.
    col_values = ','.join([f':{col}' for col in df.columns])

    with engine.connect() as con:

        statement=text(f"""
            INSERT INTO {table_name} 
            ({columns})
            VALUES
            ({col_values})""")

        for line in data:
            con.execute(statement, **line)
            
            
    print(f"{len(data)} rows inserted into {table_name}.")

def delete_oldest_rows(oldest_date,table_name):

    ''' Deletes the oldest rows of table name. Table must have a "date_scraped" column.'''

    
    with engine.connect() as con:

        test_statement= f'''
        DELETE from {table_name}
        WHERE date_scraped = '{oldest_date}';'''

        con.execute(test_statement)
            
            
    print(f"{len(df[(df['date_scraped']==oldest_date)])} rows deleted from {table_name}.")


def menu_items():

    '''Returns list of unique dates to populate dropdown menu on app.'''

    query = '''
    select distinct date_scraped as ds 
    from california_weather
    order by date_scraped desc
    '''

    dates = pd.read_sql_query(query,engine)
    return list(dates['ds'])

# In[7]:

def main():
    # Get template dataframe.
    query = '''
    select * from california_cities
    '''

    df = pd.read_sql_query(query, engine)

    # Check if we are over 19 scrapes. 19 scrapes puts us at 9,158 rows. Need to stay within 10k. Deletes oldest rows in database:
    dates = menu_items()
    if len(dates) > 19:
        delete_oldest_rows(dates[-1],'california_weather')

    # Fetch most recent data.
    recent_data = update_df(df)

    if recent_data.empty:
        print("Server error on Openweather or Breezometer")
    else:
        #Save a backup in case anything went wrong.
        recent_data.to_csv('weather_update.csv', index=False)
        # Push to SQL to update.
        push_to_sql(recent_data,'california_weather')

if __name__ == "__main__":
    main()