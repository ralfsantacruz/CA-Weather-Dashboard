from flask import Flask, render_template, request, Markup
from graph_gen import generate_plot
from map_gen import generate_scattermap, utc_to_pst

from datetime import datetime
from pytz import timezone
import pytz

from timefunc import pst_to_12hr

from sqlalchemy import create_engine

import pandas as pd

# Create connection to SQL
engine = create_engine("mysql://root:password@localhost/weather_data")


app = Flask(__name__)

@app.route("/",methods=['GET', 'POST'])
def home():

    if request.method == 'GET':
        query = '''select * from california_weather where date_scraped = "2018-11-30 22:06:00"'''
        df = pd.read_sql_query(query, engine)
        date_shown = pst_to_12hr(df['date_scraped'][0])
        map_html = Markup(generate_scattermap(df))
    else:
        # Get form data as SQL query
        date = request.form['text']

        query=f'''select * from california_weather where date_scraped = "{date}"'''

        # Plug into pandas to return data for query.
        df = pd.read_sql_query(query, engine)
        date_shown = pst_to_12hr(df['date_scraped'][0])
        map_html = Markup(generate_scattermap(df))
        # plot_html = generate_plot(text)

    return render_template("index.html",map_html=map_html,date_shown=date_shown)


if __name__ == "__main__":
    app.run(debug=True,threaded=True)