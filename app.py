from flask import Flask, render_template, request, Markup
from graph_gen import generate_plot
from map_gen import generate_scattermap, utc_to_pst
from ETL import menu_items

from datetime import datetime
from pytz import timezone
import pytz

from timefunc import pst_to_12hr

from sqlalchemy import create_engine

import pandas as pd

# Create connection to SQL loally
# engine = create_engine("mysql://root:password@localhost/weather_data")

# Create connection to Postgres
engine = create_engine("postgresql://postgres:password@localhost/weather_data")




app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def intro():
    if request.method == "POST":
        return render_template("weather.html")
    else:
        return render_template("index.html")
    

@app.route("/home",methods=['GET', 'POST'])
def default_weather():
    menu_item = menu_items()
    # Query for latest data.
    query = f'''select * from california_weather where date_scraped = '{menu_item[0]}';'''
    df = pd.read_sql_query(query, engine)

    # Convert 24 hour time to 12 hour for display.
    date_shown = pst_to_12hr(df['date_scraped'][0])

    # Use returned dataframe to create scatter map
    map_html = Markup(generate_scattermap(df))

    return render_template("weather.html",map_html=map_html,date_shown=date_shown,menu_items=menu_item,pst=pst_to_12hr)


@app.route('/<date>')
def updated_weather(date):
    menu_item = menu_items()
    # Get form data as SQL query
    query=f'''select * from california_weather where date_scraped = '{date}';'''

    # Plug into pandas to return data for query.
    df = pd.read_sql_query(query, engine)
    date_shown = pst_to_12hr(df['date_scraped'][0])
    map_html = Markup(generate_scattermap(df))


    return render_template("weather.html",map_html=map_html,date_shown=date_shown,menu_items=menu_item,pst=pst_to_12hr)

    
if __name__ == "__main__":
    app.run(debug=True,threaded=True)