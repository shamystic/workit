INSERT INTO Person VALUES
    ('hemanth.yakkali@duke.edu', 'Hemanth', 'Muscle Building', 'password'),
    ('shamikh.hossain@duke.edu', 'Shamikh', 'Increase Strength', 'password2'),
    ('shamikh@duke.edu', 'ssh50', NULL, 'password24');

COPY Equipment(name)
-- FROM '/Users/acgraves/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;


COPY Exercise(name, body_part, equipment)
-- FROM '/Users/acgraves/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;

COPY fitness_class(name, location, goal, description, times, link)
-- FROM '/Users/acgraves/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
-- FROM '/Users/priyanakkiran/WorkItGit/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;
-- FROM '/mnt/c/Users/shami/Projects/workit/sql/workout_classes.csv' DELIMITER ',' CSV HEADER;

INSERT INTO Workout VALUES
    ('Cardio', 'Strength and Endurance'),
    ('Hemanth BiTri', 'Strength and Endurance'),
    ('Yoga', 'Mind and Body'),
    ('Hemanth Chest', 'Strength and Endurance');

INSERT INTO has_exercise VALUES
    ('Cardio', 'Burpee'),
    ('Cardio', 'Stairmaster'),
    ('Cardio', 'Rope Jumping'),
    ('Hemanth Chest', 'Pushups'),
    ('Hemanth Chest', 'Decline Barbell Bench Press'),
    ('Hemanth Chest', 'Pullups'),
    ('Hemanth BiTri', 'Seated Triceps Press'),
    ('Hemanth BiTri', 'Cross Body Hammer Curl'),
    ('Yoga', 'Pullups'),
    ('Yoga', 'Muscle Up');

INSERT INTO owns_workout VALUES
    ('hemanth.yakkali@duke.edu','Hemanth Chest', False),
    ('hemanth.yakkali@duke.edu', 'Hemanth BiTri', False),
    ('hemanth.yakkali@duke.edu', 'Yoga', True),
    ('hemanth.yakkali@duke.edu', 'Cardio', True),
    ('shamikh.hossain@duke.edu', 'Cardio', True);

INSERT INTO has_favorite_class VALUES
    ('hemanth.yakkali@duke.edu', 'Muscle Pump Xpress'),
    ('hemanth.yakkali@duke.edu', 'Pilates Barre'),
    ('shamikh.hossain@duke.edu', 'Pilates Barre');
