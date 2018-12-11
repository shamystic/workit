INSERT INTO Person VALUES
    ('hemanth.yakkali@duke.edu', 'Hemanth', 'Muscle Building', 'password'),
    ('shamikh.hossain@duke.edu', 'Shamikh', 'Increase Strength', 'password2'),
    ('shamikh@duke.edu', 'ssh50', NULL, 'password24');

COPY Equipment(name)
<<<<<<< HEAD
FROM '/Users/acgraves/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
-- #<<<<<<< HEAD
-- #<<<<<<< HEAD
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;


COPY Exercise(name, body_part, equipment)
FROM '/Users/acgraves/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- =======
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;


COPY Exercise(name, body_part, equipment)
FROM '/Users/acgraves/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
--FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- >>>>>>> 450a0356db5cd384153c0386741899d94edfda6f


COPY fitness_class(name, location, goal, description, times, link)
FROM '/Users/acgraves/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
--FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
-- =======

-- FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER; 
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;

COPY Exercise(name, body_part, equipment)
FROM '/Users/acgraves/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER; 
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;

COPY fitness_class(name, location, goal, description, times, link)
FROM '/Users/acgraves/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;  
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
-- >>>>>>> d587de8ad58259ac9efa5eb5da942d22d03c7550
=======
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
--FROM '/Users/acgraves/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;

COPY Exercise(name, body_part, equipment)
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;

COPY fitness_class(name, location, goal, description, times, link)
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
>>>>>>> 6bb9705293dc781983e284eb9861b41d272505c8

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
    ('hemanth.yakkali@duke.edu','Hemanth Chest', True),
    ('hemanth.yakkali@duke.edu', 'Hemanths Bi/Tri', True),
    ('shamikh.hossain@duke.edu', 'Cardio', False);

INSERT INTO has_favorite_class VALUES
    ('hemanth.yakkali@duke.edu', 'Muscle Pump Xpress'),
    ('hemanth.yakkali@duke.edu', 'Pilates Barre'),
    ('shamikh.hossain@duke.edu', 'Pilates Barre');
