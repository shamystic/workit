CREATE TABLE Person
(name VARCHAR(256) NOT NULL,
email VARCHAR(256) PRIMARY KEY,
password VARCHAR(256) NOT NULL);

CREATE TABLE Equipment
(name VARCHAR(256) PRIMARY KEY);

CREATE TABLE Exercise
(name VARCHAR(256) PRIMARY KEY,
body_part VARCHAR(256) NOT NULL);

CREATE TABLE Workout_Circuit
(circuit_id INTEGER PRIMARY KEY,
workout_type VARCHAR(256) NOT NULL);

CREATE TABLE Fitness_Class
(name VARCHAR(256) PRIMARY KEY,
location VARCHAR(256));

CREATE TABLE ownsWorkout
(email VARCHAR (256) REFERENCES Person(email),
circuit_id INTEGER REFERENCES Workout_Circuit(circuit_id));

CREATE TABLE hasFavoriteClass
(email VARCHAR (256) REFERENCES Person(email),
class_name VARCHAR(256) REFERENCES Fitness_Class(name));

CREATE TABLE hasExercise
(circuit_id INTEGER REFERENCES Workout_Circuit(circuit_id),
exercise_name VARCHAR(256) REFERENCES Exercise(name));
