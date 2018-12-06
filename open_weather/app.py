from flask import Flask, render_template, request, Markup
from graph_gen import generate_plot
from map_gen import generate_scattermap, utc_to_pst

from datetime import datetime
from pytz import timezone
import pytz

from sqlalchemy import create_engine

import pandas as pd

# Create connection to SQL
engine = create_engine("mysql://root:password@localhost/weather_data")
query='''select * from california_weather where day(date) = 5 and hour(date) between 00 and 01'''

app = Flask(__name__)

@app.route("/",methods=['GET', 'POST'])
def home():

    if request.method == 'GET':
        df = pd.read_sql_query(query, engine)
        # df = pd.read_csv('test_data2.csv')
        pst_time = utc_to_pst(df['date'][0])
        map_html = Markup(generate_scattermap(df))
        # plot_html = generate_plot("san francisco")
    else:
        # Get form data as SQL query
        text = request.form['text']
        # Plug into pandas to return data for query.
        df = pd.read_sql_query(text, engine)

        pst_time = utc_to_pst(df['date'][0])
        map_html = Markup(generate_scattermap(df))
        # plot_html = generate_plot(text)

    return render_template("index.html",map_html=map_html,date_shown=pst_time)

# @app.route('/form', methods=['POST'])
# def my_form_post():
    
#     processed_text = text.upper()
#     return processed_text

if __name__ == "__main__":
    app.run(debug=True,threaded=True)