from flask import Flask, request, render_template, url_for, session, redirect, jsonify, flash, Response, current_app
from flask_sqlalchemy import SQLAlchemy
from add_equipment import equipment
from get_workouts import workouts
from flask_login import LoginManager, login_required, login_user, logout_user, current_user

# do current_user to get logged in user
# do current_user.email to get current email

app = Flask(__name__)
app.config.from_object('config')
db = SQLAlchemy(app)

from models import *

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'

@login_manager.user_loader
def load_user(user_id):
    return Person.query.get(user_id)

@app.route('/', methods=['GET'])
def index():
    print(current_user)
    return render_template('main.html')

@app.route('/equipment', methods = ['GET'])
def show_equipment():
	return render_template('equipment.html', equipment = Equipment.query.with_entities(Equipment.name))

@app.route('/exercises', methods = ['GET'])
def show_exercises():
	return render_template('exercises.html', exercises = Exercise.query.all())

@app.route('/workouts', methods = ['GET'])
def show_workouts():
    workouts = Workout.query.all()
    exercises = hasExercise.query.all()
    return render_template('workouts.html', workouts = workouts, exercises = exercises)

@app.route('/create-workout', methods = ['GET', 'POST'])
@login_required
def create_workout():
    if request.method == 'GET':
        exercises = Exercise.query.all()
        body_parts = Exercise.query.with_entities(Exercise.body_part).distinct()
        return render_template('workout-form.html', exercises = exercises, body_parts = body_parts)
    workout_name = request.form['name']
    workout_type = request.form['workout_type']
    workout = Workout(workout_id = workout_name, workout_type = workout_type)
    db.session.add(workout)
    db.session.commit()
    own = ownsWorkout(email = current_user.email, workout_id = workout_name)
    db.session.add(own)
    db.session.commit()
    for item in request.form.getlist('workout'):
        temp = hasExercise(workout_id = workout_name, exercise_id = item)
        db.session.add(temp)
        db.session.commit()
    return redirect(url_for('create_workout'))

@app.route('/users', methods = ['GET'])
def show_users():
    return render_template('users.html', users = Person.query.all(), workouts = ownsWorkout.query.all())

@app.route('/login', methods = ['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login.html')
    email = request.form['email']
    password = request.form['password']
    user = Person.query.filter_by(email = email, password = password).first()
    if user is None:
        return redirect(url_for('login'))
    login_user(user)
    print('Logged in successfully')
    return redirect(url_for('index'))

@app.route('/register', methods = ['GET', 'POST'])
def register():
    if request.method == 'GET':
        return render_template('register.html')
    user = Person(email = request.form['email'], name = request.form['name'], password = request.form['password'])
    db.session.add(user)
    db.session.commit()
    print('User successfully registered!')
    return redirect(url_for('login'))

@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
