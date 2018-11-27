from app import db

class User(db.Model):
    email = db.Column(db.String(120), primary_key = True, nullable=False)
    name = db.Column(db.String(120))
    password = db.Column(db.String(120))
    goal = db.Column(db.String(120))
    # ["Muscle Building", "Fat Loss", "Increase Strength"]

    def __repr__(self):
        return f"User: '{self.name}', Email: '{self.email}', Goal: '{self.goal}'"

class Equipment(db.Model):
    name = db.Column(db.String(120), primary_key = True)

    def __repr__(self):
        return f"Equipment Name: '{self.name}'"

class Exercise(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    body_part = db.Column(db.String(120))

    def __repr__(self):
        return f"Exercise Name: '{self.name}'"

class WorkoutCircuit(db.Model):
    circuit_id = db.Column(db.Integer, primary_key = True)
    workout_type = db.Column(db.String(120))

class FitnessClass(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    location = db.Column(db.String(120), primary_key = True)
    goal = db.Column(db.String(120))

    def __repr__(self):
        return f"Fitness Class Name: '{self.name}', Location: '{self.location}', Goal: '{self.goal}'"

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
