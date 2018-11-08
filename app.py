from flask import Flask, request, render_template, url_for, session, redirect, jsonify, flash, Response, current_app
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)

@app.route('/', methods=['GET'])
def index():
    return render_template('main.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
