CREATE TABLE Person (
    email VARCHAR(120) PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    goal VARCHAR(120),
    password VARCHAR(120) NOT NULL
);

CREATE TABLE Equipment (
    name VARCHAR(120) PRIMARY KEY
);

CREATE TABLE Exercise (
    name VARCHAR(120) PRIMARY KEY,
    body_part VARCHAR(120) NOT NULL,
    equipment VARCHAR(120) REFERENCES Equipment(name)
);

CREATE TABLE Workout (
    workout_id VARCHAR(120) PRIMARY KEY,
    workout_type VARCHAR(120) NOT NULL
);

CREATE TABLE fitness_class (
    name VARCHAR(120) PRIMARY KEY,
    location VARCHAR(120),
    goal VARCHAR(120),
    description VARCHAR(240),
    times VARCHAR(120),
    link VARCHAR(240)
);

CREATE TABLE has_exercise (
    workout_id VARCHAR(120) REFERENCES Workout(workout_id),
    exercise_id VARCHAR(120) REFERENCES Exercise(name),
    PRIMARY KEY(workout_id, exercise_id)
);

CREATE TABLE owns_workout (
    email VARCHAR (120) REFERENCES Person(email),
    workout_id VARCHAR(120) REFERENCES Workout(workout_id),
    favorite BOOLEAN,
    PRIMARY KEY(email, workout_id, favorite)
);

CREATE TABLE has_favorite_class (
    email VARCHAR (120) REFERENCES Person(email),
    class_name VARCHAR(120) REFERENCES fitness_class(name),
    -- class_location VARCHAR(120) REFERENCES fitness_class(location),
    PRIMARY KEY(email, class_name)
);
