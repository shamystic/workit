from flask import Flask, request, render_template, url_for, session, redirect, jsonify, flash, Response, current_app
from flask_sqlalchemy import SQLAlchemy
import models
from add_equipment import equipment
from get_workouts import workouts

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)

@app.route('/', methods = ['GET'])
def index():
    return render_template('main.html')

@app.route('/equipment', methods = ['GET'])
def equipment(): 	
	return render_template('equipment.html', equipment = equipment)

@app.route('/workouts', methods = ['GET'])
def workouts(): 	
	return render_template('workouts.html', workouts = workouts)	

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
