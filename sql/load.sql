INSERT INTO Person VALUES
    ('hemanth.yakkali@duke.edu', 'Hemanth', 'Muscle Building', 'password'),
    ('shamikh.hossain@duke.edu', 'Shamikh', 'Increase Strength', 'password2'),
    ('shamikh@duke.edu', 'ssh50', NULL, 'password24');

COPY Equipment(name)
FROM '/Users/acgraves/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;

COPY Exercise(name, body_part, equipment)
FROM '/Users/acgraves/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;

COPY Exercise(name, body_part, equipment)
FROM '/Users/acgraves/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;

COPY fitness_class(name, location, goal, description, times, link)
FROM '/Users/acgraves/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;

INSERT INTO Workout VALUES
    ('Cardio', 'Strength & Endurance'),
    ('Hemanths Bi/Tri', 'Strength & Endurance'),
    ('Something something', 'Mind & Body'),
    ('Yoga', 'Mind & Body'),
    ('Hemanth Chest', 'Strength & Endurance');

INSERT INTO has_exercise VALUES
    ('Cardio', 'Burpee'),
    ('Cardio', 'Stairmaster'),
    ('Cardio', 'Rope Jumping'),
    ('Hemanth Chest', 'Pushups'),
    ('Hemanth Chest', 'Decline Barbell Bench Press'),
    ('Hemanth Chest', 'Pullups'),
    ('Hemanths Bi/Tri', 'Seated Triceps Press'),
    ('Hemanths Bi/Tri', 'Cross Body Hammer Curl');

INSERT INTO owns_workout VALUES
    ('hemanth.yakkali@duke.edu','Hemanth Chest'),
    ('hemanth.yakkali@duke.edu', 'Hemanths Bi/Tri'),
    ('shamikh.hossain@duke.edu', 'Cardio');

INSERT INTO has_favorite_class VALUES
    ('hemanth.yakkali@duke.edu', 'Muscle Pump Xpress'),
    ('hemanth.yakkali@duke.edu', 'Pilates Barre'),
    ('shamikh.hossain@duke.edu', 'Pilates Barre');
