#!/usr/bin/env python
# coding: utf-8

# In[13]:


from sqlalchemy import create_engine
from graph_gen import pollution_epa

from config import mapbox_api_key

import plotly.plotly as py
import plotly.graph_objs as go
import plotly.offline

import pandas as pd


# In[2]:


engine = create_engine("mysql://root:password@localhost/AQI")


# In[3]:


# df = pd.read_csv('california_pollution.csv')


# In[4]:


# df.to_sql(name='california_pollution',con=engine)


# In[5]:


# query = '''
# select * from california_pollution
# '''


# In[6]:


# df2 = pd.read_sql_query(query, engine)
# df2.head()


# In[8]:


def df_geodata(filename):    
    """
    Returns dataframe with pollution data from city list dataframe.
    """
    df = pd.read_csv(filename)
    
    aqi = []
    category = []
    dominant_pollutant = []


    for lat,lng in zip(df['lat'],df['lng']):
        data = pollution_epa(lat,lng)
        index = data['data']['indexes']['usa_epa']
        
        air_quality = index['aqi']
        categories = index['category']
        dom_pollutant = index['dominant_pollutant']
        
        aqi.append(air_quality)
        category.append(categories)
        dominant_pollutant.append(dom_pollutant)
        
    df['aqi'] = aqi
    df['category'] = category
    df['dominant_pollutant'] = dominant_pollutant
    
    return df


# In[9]:


def marker_text(df):
    text = []
    for row in df.itertuples():
        a = getattr(row, "cities")
        b = getattr(row, "category")
        c = getattr(row, "aqi")
        d = getattr(row, "dominant_pollutant")
        string = f"{a}<br>{b}<br>AQI: {c}<br>Dominant pollutant: {d}"
        text.append(string)
    return text


# In[15]:


def generate_map(df):
    '''
    Generates HTML for map from pollution data.
    '''
    data = [
    go.Scattermapbox(
        lat=round(df['lat'],3),
        lon=round(df['lng'],3),
        mode='markers',
        marker=dict(
            size=df['aqi']/10,
            color= df['aqi'],
            colorscale = 'Jet',
        ),
        text= marker_text(df)
        )
    ]

    layout = go.Layout(
        hovermode='closest',
        mapbox=dict(
            accesstoken=mapbox_api_key,
            bearing=0,
            center=dict(
                lat=36,
                lon=-119
            ),
            style='dark',
            pitch=0,
            zoom=4
        ),
        margin=dict(
            l= 0,
            r= 0,
            b= 0,
            t= 0,
            pad= 2
            )
    )

    fig = dict(data=data, layout=layout)

    map_html = plotly.offline.plot(fig, include_plotlyjs=False, output_type='div')
    
    return map_html


# In[14]:


# generate_map(df2)

