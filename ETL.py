#!/usr/bin/env python
# coding: utf-8

# In[1]:


from sqlalchemy import create_engine
from sqlalchemy import types
from sqlalchemy.sql import text

from graph_gen import pollution_epa
from config import pyowm_api_key

import pandas as pd
import pyowm
import time

from timefunc import utc_to_pst_24

# In[2]:


# Establish connection to SQL
# engine = create_engine("mysql://root:password@localhost/weather_data")

# engine = create_engine("postgresql://postgres:password@localhost/weather_data")
engine=create_engine("postgres://nrggpkzhnbnmvn:3d3041056aa509c4ec3a89b39b27e20fe3016416e1b5040a2c0f3e9d4903bb3f@ec2-54-197-234-33.compute-1.amazonaws.com:5432/ddbkpb34882qas")


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
            temperature.append("NaN")
            clouds.append("NaN")
            pressure.append("NaN")
            date.append("NaN")
            wind.append("NaN")
            uv_index.append("NaN")
            rain.append("NaN")
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
            aqi.append("NaN")
            category.append("NaN")
            dominant_pollutant.append("NaN")
        
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
    # make column for date scraped, but time is converted to PST.
    df['date_scraped'] = [utc_to_pst_24(df['date'][0]) for i in range(len(df['date']))]
    
    return df.dropna()

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

def menu_items():

    '''Returns list of unique dates to populate dropdown menu on app'''

    query = '''
    select distinct date_scraped as ds 
    from california_weather
    order by date_scraped desc
    '''

    dates = pd.read_sql_query(query,engine)
    return list(dates['ds'])

# In[7]:

def main():
    query = '''
    select * from california_cities
    '''
    df = pd.read_sql_query(query, engine)

    recent_data = update_df(df)
    #Save a backup in case anything went wrong.
    recent_data.to_csv('weather_update.csv', index=False)
    push_to_sql(recent_data,'california_weather')

if __name__ == "__main__":
    main()