from flask import Flask, render_template, request
from graph_gen import generate_plot


app = Flask(__name__)

@app.route("/",methods=['GET', 'POST'])
def home():
    if request.method == 'GET':
        plot_url = generate_plot("san francisco")
    else:
        text = request.form['text']
        plot_url = generate_plot(text)

    return render_template("index.html",plot_url=plot_url)

# @app.route('/form', methods=['POST'])
# def my_form_post():
    
#     processed_text = text.upper()
#     return processed_text

if __name__ == "__main__":
    app.run(debug=True,threaded=True)