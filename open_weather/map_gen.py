#!/usr/bin/env python
# coding: utf-8

# In[13]:

from graph_gen import pollution_epa

from config import mapbox_api_key

import plotly.plotly as py
import plotly.graph_objs as go
import plotly.offline

import pandas as pd

# In[8]:


def df_geodata(filename):    
    """
    Returns dataframe with pollution data from city list dataframe.
    """
    df = pd.read_csv(filename)
    
    aqi = []
    category = []
    dominant_pollutant = []
    date = []


    for lat,lng in zip(df['lat'],df['lng']):
        data = pollution_epa(lat,lng)
        
        if data != None:
            index = data['data']['indexes']['usa_epa']

            air_quality = index['aqi']
            categories = index['category']
            dom_pollutant = index['dominant_pollutant']
            datetime = data['data']['datetime']

            aqi.append(air_quality)
            category.append(categories)
            dominant_pollutant.append(dom_pollutant)
            date.append(datetime)
            
        else:
            aqi.append("NaN")
            category.append("NaN")
            dominant_pollutant.append("NaN")
            date.append("NaN")          

    df['aqi'] = aqi
    df['category'] = category
    df['dominant_pollutant'] = dominant_pollutant
    df['datetime'] = date
    
    return df.dropna()


# In[9]:


def marker_text(df):
    '''
    Creates text for map markers.
    '''
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

    #     data = [
    # go.Scattermapbox(
    #     lat=round(df['lat'],3),
    #     lon=round(df['lng'],3),
    #     mode='markers',
    #     marker=dict(
    #         size=df['aqi']/10,
    #         color= df['aqi'],
    #         colorscale = 'Jet',
    #     ),
    #     text= marker_text(df)
    #     ),
    # go.Scattermapbox(
    #     lat=round(df['lat'],3),
    #     lon=round(df['lng'],3),
    #     mode='markers',
    #     marker=dict(
    #         size=df['uv_index'],
    #         color= df['uv_index'],
    #         colorscale = 'Jet',
    #     )
    #     # text= marker_text(df)
    # )
    # ]

    # updatemenus = list([
    # dict(active=-1,
    #      buttons=list([   
    #         dict(label = 'AQI',
    #              method = 'update',
    #              args = [{'visible': [True, False]},
    #                      {'title': 'AQI'}]),
    #         dict(label = 'UV',
    #              method = 'update',
    #              args = [{'visible': [False, True]},
    #                      {'title': 'UV'}])
    #     ]), 
       
    #     x = 0.0,
    #     xanchor = 'left',
    #     y = 1,
    #     yanchor = 'bottom',
    #     bgcolor = '#000000',
    #     active = 99,
    #     bordercolor = '#FFFFFF',
    #     font = dict(size=11, color='#AAAAAA')
    # ))]
    

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
            zoom=5
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