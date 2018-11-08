from flask import Flask, request, render_template, url_for, session, redirect, jsonify, flash, Response, current_app
from flask_sqlalchemy import SQLAlchemy
# from models import *

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)

class User(db.Model):
    email = db.Column(db.String(120), primary_key = True, nullable=False)
    name = db.Column(db.String(120))
    password = db.Column(db.String(120))

    def __repr__(self):
        return f"User '{self.name}', '{self.email}'"

class Equipment(db.Model):
    name = db.Column(db.String(120), primary_key = True)

class Exercise(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    body_part = db.Column(db.String(120))

class Workout_Circuit(db.Model):
    circuit_id = db.Column(db.Integer, primary_key = True)
    workout_type = db.Column(db.String(120))

class Fitness_Class(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    location = db.Column(db.String(120), primary_key = True)

# class ownsWorkout(db.Model):
#     email = db.Column(db.String(120), db.ForeignKey(User.email))
#     circuit_id = db.Column(db.Integer, db.ForeignKey(Workout_Circuit.circuit_id))
#
# class hasFavoriteClass(db.Model):
#     email = db.Column(db.String(120), db.ForeignKey(User.email))
#     class_name = db.Column(db.String(120), db.ForeignKey(Fitness_Class.name))
#     class_location = db.Column(db.String(120), db.ForeignKey(Fitness_Class.location))
#
# class hasExercise(db.Model):
#     circuit_id = db.Column(db.Integer, db.ForeignKey(Workout_Circuit.circuit_id))
#     exercise_name = db.Column(db.String(120), db.ForeignKey(Exercise.name))


@app.route('/', methods=['GET'])
def index():
    return render_template('main.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
