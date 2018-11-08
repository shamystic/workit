class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(30), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

    def __repr__(self):
        return f"User '{self.username}', '{self.email}'"

class Equipment(db.Model):
    name = db.Column(db.String(120), primary_key = True)

    def __repr__(self):
        return f"Equipment '{self.name}'"    

class Exercise(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    body_part = db.Column(db.String(120))

    def __repr__(self):
        return f"Exercise '{self.name}'"        

class Workout_Circuit(db.Model):
    circuit_id = db.Column(db.Integer, primary_key = True)
    workout_type = db.Column(db.String(120))

class Fitness_Class(db.Model):
    name = db.Column(db.String(120), primary_key = True)
    location = db.Column(db.String(120), primary_key = True)
