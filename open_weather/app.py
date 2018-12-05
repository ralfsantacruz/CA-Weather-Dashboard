from flask import Flask, render_template, request
from graph_gen import generate_plot
from map_gen import generate_scattermap

from sqlalchemy import create_engine

import pandas as pd

# Create connection to SQL
engine = create_engine("mysql://root:password@localhost/weather_data")
query='''select * from california_weather'''

app = Flask(__name__)

@app.route("/",methods=['GET', 'POST'])
def home():
    
    if request.method == 'GET':
        df = pd.read_sql_query(query, engine).set_index('index')
        map_html = generate_scattermap(df)
        # plot_html = generate_plot("san francisco")
    else:
        # text = request.form['text']
        # plot_html = generate_plot(text)
        map_html = generate_scattermap(pd.read_sql_query(query, engine))

    return render_template("index.html",map_html=map_html)

# @app.route('/form', methods=['POST'])
# def my_form_post():
    
#     processed_text = text.upper()
#     return processed_text

if __name__ == "__main__":
    app.run(debug=True,threaded=True)