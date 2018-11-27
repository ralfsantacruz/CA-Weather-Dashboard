#!/usr/bin/env python
# coding: utf-8

# In[12]:


import plotly.plotly as py
import plotly.graph_objs as go
import plotly

import pandas as pd
import requests

from pprint import pprint
from datetime import datetime as dt
from datetime import timedelta


# In[ ]:


plotly.tools.set_credentials_file(username='ralfsantacruz', api_key='m43Oz35O5mKYCxDDJoDq')


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
    loc = data['results'][0]['geometry']['location']
    
    lat = loc['lat']
    lng = loc['lng']
    
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
    lat,lng = get_coords(city)
    pollution_data = pollution(lat,lng)
    
    if pollution_data != None:
        x = [x['datetime'] for x in pollution_data['data']]
        y = [y['indexes']['baqi']['aqi'] for y in pollution_data['data']]
        data = [go.Line(x=x,
                    y=y)]

        layout = go.Layout(title=f"AQI for {city.title()}",
                        xaxis=dict(title='Date'),
                        yaxis=dict(title='AQI'))

        fig = go.Figure(data=data, layout=layout)
        
        return py.plot(fig, filename='jupyter-basic_line',auto_open=False)
    else:
        return "404"


# # Calling functions to plot:

# In[48]:


# x = generate_plot("san francisco")


# In[50]:


# print(x)


# In[45]:


# generate_plot("san francisco")


# In[46]:


# generate_plot("boston")

