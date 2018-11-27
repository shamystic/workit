from flask import Flask, request, render_template, url_for, session, redirect, jsonify, flash, Response, current_app
from flask_sqlalchemy import SQLAlchemy
from add_equipment import equipment
from get_workouts import workouts
from models import *

app = Flask(__name__)
app.config.from_object('config')
db = SQLAlchemy(app)

@app.route('/', methods=['GET'])
def index():
    return render_template('main.html')

@app.route('/equipment', methods = ['GET'])
def show_equipment():
	return render_template('equipment.html', equipment = Equipment.query.all())

@app.route('/workouts', methods = ['GET'])
def show_workouts():
	return render_template('workout.html', workouts = Exercise.query.all())

@app.route('/login', methods = ['GET'])
def login():
	return render_template('login.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
