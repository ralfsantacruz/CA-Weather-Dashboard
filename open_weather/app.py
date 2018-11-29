from flask import Flask, render_template, request
from graph_gen import generate_plot
from map_gen import generate_map

from sqlalchemy import create_engine

import pandas as pd

# Create connection to SQL
engine = create_engine("mysql://root:password@localhost/AQI")
query='''select * from california_pollution'''

app = Flask(__name__)

@app.route("/",methods=['GET', 'POST'])
def home():
    if request.method == 'GET':
        plot_html = generate_map(pd.read_sql_query(query, engine))
        # plot_html = generate_plot("san francisco")
    else:
        # text = request.form['text']
        # plot_html = generate_plot(text)
        plot_html = generate_map(pd.read_sql_query(query, engine))

    return render_template("index.html",plot_html=plot_html)

# @app.route('/form', methods=['POST'])
# def my_form_post():
    
#     processed_text = text.upper()
#     return processed_text

if __name__ == "__main__":
    app.run(debug=True,threaded=True)