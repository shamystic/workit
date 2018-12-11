from app import db

class Person(db.Model):
    email = db.Column(db.String(120), primary_key=True)
    name = db.Column(db.String(120))
    password = db.Column(db.String(120))
    goal = db.Column(db.String(120), nullable = True)
    # ["Mind & Body", "Strength & Endurance", "Weight Loss", "Aerobics and Balance"]

    def __repr__(self):
        return "Person: <{}>, Email: <{}>".format(self.name, self.email)

    def is_authenticated(self):
        return True

    def is_active(self):
        return True

    def get_id(self):
        return self.email

    def is_anonymous(self):
        return False

class Exercise(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    body_part = db.Column(db.String(120))
    equipment = db.Column(db.String(120))

    def __repr__(self):
        return "Exercise Name: {}".format(self.name)

# class Equipment(db.Model):
#     name = db.Column(db.String(120), primary_key = True)
#     exercises = db.Column(db.String(120), db.ForeignKey(Exercise.name), nullable = False)
#
#     def __repr__(self):
#         return "Equipment Name: {}".format(self.name)

class Workout(db.Model):
    workout_id = db.Column(db.String(120), primary_key = True)
    workout_type = db.Column(db.String(120))

class FitnessClass(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    location = db.Column(db.String(120))
    goal = db.Column(db.String(120))
    description = db.Column(db.String(240))
    times = db.Column(db.String(120))
    link = db.Column(db.String(240))

    def __repr__(self):
        return "Fitness Class Name: <{}>, Location: <{}>, Goal: <{}>".format(self.name, self.location, self.goal)

class hasExercise(db.Model):
    workout_id = db.Column('workout_id', db.String(120), db.ForeignKey(Workout.workout_id), primary_key = True)
    exercise_id = db.Column('exercise_id', db.String(120), db.ForeignKey(Exercise.name), primary_key = True)

class ownsWorkout(db.Model):
    email = db.Column('email', db.String(120), db.ForeignKey(Person.email), primary_key = True)
    workout_id = db.Column('workout_id', db.String(120), db.ForeignKey(Workout.workout_id), primary_key = True)
    favorite = db.Column(db.Boolean, primary_key = True)

class hasFavoriteClass(db.Model):
    email = db.Column('email', db.String(120), db.ForeignKey(Person.email), primary_key = True)
    class_name = db.Column('class_name', db.String(120), db.ForeignKey(FitnessClass.name), primary_key = True)
