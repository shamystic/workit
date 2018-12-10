INSERT INTO Person VALUES
    ('hemanth.yakkali@duke.edu', 'Hemanth', 'Muscle Building', 'password'),
    ('shamikh.hossain@duke.edu', 'Shamikh', 'Increase Strength', 'password2'),
    ('shamikh@duke.edu', 'ssh50', NULL, 'password24');

COPY Equipment(name)
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;

COPY Exercise(name, body_part, equipment)
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;

INSERT INTO Workout VALUES
    ('Cardio', 'Strength and Endurance'),
    ('Hemanths Bi/Tri', 'Strength and Endurance'),
    ('Something something', 'Mind and Body'),
    ('Yoga', 'Mind and Body'),
    ('Hemanth Chest', 'Strength and Endurance');

INSERT INTO fitness_class VALUES
    ('Muscle Pump', 'Wilson Gym', 'Strength and Endurance'),
    ('HIIT', 'Wilson Gym', 'Strength and Endurance'),
    ('Barre', 'Wilson Gym', 'Strength and Endurance'),
    ('Yoga', 'Wilson Gym', 'Mind and Body');

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
    ('hemanth.yakkali@duke.edu', 'Muscle Pump'),
    ('hemanth.yakkali@duke.edu', 'Barre'),
    ('shamikh.hossain@duke.edu', 'Barre');
