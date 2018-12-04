CREATE TABLE Person
(email VARCHAR(120) PRIMARY KEY,
name VARCHAR(120) NOT NULL,
goal VARCHAR(120),
password VARCHAR(120) NOT NULL);

CREATE TABLE Equipment
(name VARCHAR(120) PRIMARY KEY);

CREATE TABLE Exercise
(name VARCHAR(120) PRIMARY KEY,
body_part VARCHAR(120) NOT NULL,
equipment VARCHAR(120) REFERENCES Equipment(name));

-- CREATE TABLE Workout_Circuit
-- (circuit_id INTEGER PRIMARY KEY,
-- workout_type VARCHAR(120) NOT NULL);

-- CREATE TABLE Fitness_Class
-- (name VARCHAR(120) PRIMARY KEY,
-- location VARCHAR(120));

-- CREATE TABLE ownsWorkout
-- (email VARCHAR (120) REFERENCES Person(email),
-- circuit_id INTEGER REFERENCES Workout_Circuit(circuit_id));

-- CREATE TABLE hasFavoriteClass
-- (email VARCHAR (120) REFERENCES Person(email),
-- class_name VARCHAR(120) REFERENCES Fitness_Class(name));

-- CREATE TABLE hasExercise
-- (circuit_id INTEGER REFERENCES Workout_Circuit(circuit_id),
-- exercise_name VARCHAR(120) REFERENCES Exercise(name));
