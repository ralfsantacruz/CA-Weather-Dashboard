#!/usr/bin/env python
# coding: utf-8

# In[1]:


import plotly.plotly as py
import plotly.graph_objs as go
import plotly.offline

from config import mapbox_api_key

import pandas as pd
import numpy as np

from pytz import timezone
import pytz

from datetime import datetime as dt

# # Mapping functions:

# In[36]:
def utc_to_pst(date):
    d = pytz.utc.localize(date)
    pst = d.astimezone(timezone('US/Pacific'))
    parsed_pst = dt.strftime(pst, '%Y-%m-%d %I:%M %p')
    
    return parsed_pst

# def check_col(df,col):
    
#     '''Checks column and returns appropriate parameters for mapping.'''
    
#     size = df[col]
#     colorscale = 'Jet'
#     reversescale=False
    
#     if col == 'rain':
#         string = "{}<br>Value: {}mm"
#         size = df[col]*3
#         colorscale = 'Blues'
#         reversescale=True
        
#     elif col == 'wind_speed':
#         string = "{}<br>Value: {}m/s"
#         size = df[col]*3
        
#     elif col == 'temperature':
#         string = "{}<br>Value: {}\u00b0F"
#         size = df[col]/2.5
        
#     elif col == 'cloud':
#         string = "{}<br>Percentage: {}%"
#         size = df[col]/2
#         colorscale = 'Blues'
        
#     elif col == 'pressure':
#         string = "{}<br>Value: {}hPa"
#         size = df[col]/100
#         colorscale='Viridis'
        
#     elif col == 'aqi':
#         string = "{}<br>Value: {}<br>{}<br>Dominant pollutant: {}"
#         size = df[col]/10
        
#     else:
#         string = "{}<br>Value: {}mW/m\u00b2"
#         size = df[col]*2
    
#     return size,string,colorscale,reversescale

def check_col(df,col):
    
    '''Checks column and returns appropriate parameters for mapping.'''
    
    size = df[col]
    colorscale = 'Jet'
    reversescale=False
    
    if col == 'rain':
        string = "{}<br>Value: {}mm<br>Date: {}"
        size = df[col]*2
        colorscale = 'Blues'
        reversescale=True
        
    elif col == 'wind_speed':
        string = "{}<br>Value: {}m/s<br>Date: {}"
        size = df[col]*1.5
        
    elif col == 'temperature':
        string = "{}<br>Value: {}\u00b0F<br>Date: {}"
        size = df[col]/3
        
    elif col == 'cloud':
        string = "{}<br>Percentage: {}%<br>Date: {}"
        size = df[col]/1.5
        colorscale = 'Blues'
        
    elif col == 'pressure':
        string = "{}<br>Value: {}hPa<br>Date: {}"
        size = df[col]/100
        colorscale='YlGnBu'
        
    elif col == 'aqi':
        string = "{}<br>Value: {}<br>{}<br>Dominant pollutant: {}<br>Date: {}"
        size = df[col]/10
        
    else:
        string = "{}<br>Value: {}mW/m\u00b2<br>Date: {}"
        size = df[col]*2
    
    return size,string,colorscale,reversescale


# In[8]:


# def marker_text(df,col,fstring):
#     '''
#     Generates hover-over text for weather info.
#     '''
#     text = []
#     for row in df.itertuples():
#         if col == 'aqi':
#             a = getattr(row, "city")
#             b = getattr(row, col)
#             c = getattr(row, "category")
#             d = getattr(row, "dominant_pollutant")
#             marker_text = fstring.format(a,b,c,d)
#             text.append(marker_text)
#         else:
#             a = getattr(row, "city")
#             b = getattr(row, col)
#             marker_text = fstring.format(a,b)
#             text.append(marker_text)
#     return text

def marker_text(df,col,fstring):
    '''
    Generates hover-over text for weather info.
    '''
    text = []
    for row in df.itertuples():
        if col == 'aqi':
            a = getattr(row, "city")
            b = getattr(row, col)
            c = getattr(row, "category")
            d = getattr(row, "dominant_pollutant")
            e = utc_to_pst(getattr(row, "date"))
            marker_text = fstring.format(a,b,c,d,e)
            text.append(marker_text)
        else:
            a = getattr(row, "city")
            b = getattr(row, col)
            c = utc_to_pst(getattr(row, "date"))
            marker_text = fstring.format(a,b,c)
            text.append(marker_text)
    return text


# In[34]:


def make_traces(df,columns):

    '''
    Generates traces from weather data.
    '''
    data = []
    
    for column in columns:
        
        # Return appropriate data and layout for each column.
        size,string,colorscale,reversescale = check_col(df,column)
        
        # Display first trace instead of all data at once.
        if column == columns[0]:
            visible = True
        else:
            visible = 'legendonly'
            
        trace = go.Scattermapbox(
            lat=round(df['lat'],3),
            lon=round(df['lng'],3),
            mode='markers',
            marker=dict(
                size=size,
                color= size,
                colorscale = colorscale,
                reversescale=reversescale
            ),
            text= marker_text(df,column,string),
            name=column,
            visible=visible
            )
        data.append(trace)
        
    return data


# In[10]:


def make_conditions(col_list):
    
    ''' Returns an array with lists of conditions for dropdown menus.'''
    
    # Make array full of False values with dimensions of input list.
    array = np.full(shape=(len(col_list),len(col_list)), fill_value=False, dtype=bool)
    
    for i in range(len(array)):
        array[i][i] = True
    
    return array


# In[11]:


def menu_buttons(labels,conditions):
    
    '''Returns a list of buttons for dropdown menus in scattermap.'''
    
    buttons = []
    
    for label,condition in zip(labels,conditions):
        dic = {'label':label,
            'method':'update',
            'args':[{'visible': condition}]}
        
        buttons.append(dic)
        
    return buttons

# In[37]:


def generate_scattermap(df):
    
    # lists for menu and for actual plotting.
    menu_categories = ['UV Index', 'AQI', 'Temperature', 'Cloud', 'Pressure', 'Wind Speed', 'Rain']
    plot_columns = ['uv_index', 'aqi','temperature', 'cloud','pressure', 'wind_speed', 'rain']

    # Menu options for dropdown menu.
    conditions = make_conditions(menu_categories)
    buttons = menu_buttons(menu_categories,conditions)

    data = make_traces(df,plot_columns)

    updatemenus = list([
        dict(
             buttons=buttons,
            x = 0.0,
            xanchor = 'left',
            y = 1,
            yanchor = 'top',
            pad = {'l': 3, 't': 3},
            bgcolor = '#AAAAAA',
            showactive = True,
            bordercolor = '#FFFFFF',
            font = dict(size=11, color='#000000')
        )])

    layout = go.Layout(
        autosize=True,
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
        margin = dict( t=0, b=0, l=0, r=0 ),
        updatemenus=updatemenus,
        showlegend=False
    )
    
    fig = dict(data=data, layout=layout)
    map_html = plotly.offline.plot(fig, include_plotlyjs=False, output_type='div')
    
    return map_html