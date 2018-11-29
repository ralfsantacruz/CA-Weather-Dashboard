#!/usr/bin/env python
# coding: utf-8

# In[12]:


import plotly.plotly as py
import plotly.graph_objs as go
import plotly.offline

import requests

from pprint import pprint
from datetime import datetime as dt
from datetime import timedelta


# In[4]:

def num_hours_ago(hours):
    """
    Returns UTC time x hours ago.
    """
#     from datetime import datetime as dt
    date = dt.utcnow() - timedelta(hours=hours)
    return dt.strftime(date, "%Y-%m-%dT%H:%M:%S")


# In[5]:


def get_coords(location):
    """
    Returns coordinates of address for given input.
    """
    from config import g_api_key
    base_url = f"https://maps.googleapis.com/maps/api/geocode/json?address={location}&key={g_api_key}"
    
    data = requests.get(base_url).json()

    try:
        loc = data['results'][0]['geometry']['location']
        
        lat = loc['lat']
        lng = loc['lng']
    except:
        return "404"
    
    return lat,lng


# In[6]:


def pollution(lat,lng):
    """
    Returns pollution data from coordinates.
    """
    from config import b_api_key 
    
    end_datetime = num_hours_ago(1)
    start_datetime = num_hours_ago(168)
    
    try:
        base_url = f"https://api.breezometer.com/air-quality/v2/historical/hourly?lat={lat}&lon={lng}&key={b_api_key}&start_datetime={start_datetime}&end_datetime={end_datetime}"
        data = requests.get(base_url).json()        
    except:
        return None

    return data


# In[49]:


def generate_plot(city):
    try:    
        lat,lng = get_coords(city)
    except ValueError:
        return "Error: We could not find the coordinates for the entry you supplied."

    pollution_data = pollution(lat,lng)
    
    try:
        x = [x['datetime'] for x in pollution_data['data'] if x['data_available'] == True]
        y = [y['indexes']['baqi']['aqi'] for y in pollution_data['data'] if y['data_available'] == True]
        
        text1 = [text['indexes']['baqi']['dominant_pollutant'] for text in pollution_data['data'] if text['data_available'] == True]
        text2 = [text['indexes']['baqi']['category'] for text in pollution_data['data'] if text['data_available'] == True]
        
        text = [f"Dominant pollutant: {x}<br>{y}" for x,y in zip(text1,text2)]
        
        data = [go.Scattergl(x=x,
                           y=y, 
                           mode="markers", 
                           marker=dict(
                            size=12,
                            color = y, #set color equal to a variable
                            colorscale='Viridis',
                            showscale=True
                           ),  
                           name="AQI",
                            text= text)]

        layout = go.Layout(title=f"AQI for {city.title()}",
                        xaxis=dict(title='Date'),
                        yaxis=dict(title='AQI'))

        fig = go.Figure(data=data, layout=layout)
        
        return plotly.offline.plot(fig, include_plotlyjs=False, output_type='div')

    except:
        return "404"


# # Calling functions to plot:
#
# In[48]:


# x = generate_plot("san francisco")


# In[50]:


# print(x)


# In[45]:


# generate_plot("san francisco")


# In[46]:


# generate_plot("boston")

