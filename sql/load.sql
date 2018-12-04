INSERT INTO Person VALUES
    ('hemanth.yakkali@duke.edu', 'Hemanth', 'Muscle Building', 'password'),
    ('shamikh.hossain@duke.edu', 'Shamikh', 'Increase Strength', 'password2'),
    ('shamikh@duke.edu', 'ssh50', NULL, 'password24');

COPY Equipment(name)
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Equipment.csv' DELIMITER ',' CSV HEADER;

COPY Exercise(name, body_part, equipment)
FROM '/Users/hyakkali/Hemanth/CS316/workit/sql/Exercises.csv' DELIMITER ',' CSV HEADER;

INSERT INTO Workout VALUES
    (1, 'Cardio'),
    (2, 'Strength'),
    (3, 'Bi/Tri');

INSERT INTO fitness_class VALUES
    ('Muscle Pump', 'Wilson Gym', 'Muscle Endurance'),
    ('HIIT', 'Wilson Gym', 'Cardio'),
    ('Barre', 'Wilson Gym', 'Muscle Endurance');

INSERT INTO has_exercise VALUES
    (1, 'Burpee'),
    (1, 'Stairmaster'),
    (1, 'Rope Jumping'),
    (2, 'Pushups'),
    (2, 'Decline Barbell Bench Press'),
    (2, 'Pullups'),
    (3, 'Seated Triceps Press'),
    (3, 'Cross Body Hammer Curl');

INSERT INTO owns_workout VALUES
    ('hemanth.yakkali@duke.edu', 1),
    ('hemanth.yakkali@duke.edu', 2),
    ('shamikh.hossain@duke.edu', 2);

INSERT INTO has_favorite_class VALUES
    ('hemanth.yakkali@duke.edu', 'Muscle Pump'),
    ('hemanth.yakkali@duke.edu', 'Barre'),
    ('shamikh.hossain@duke.edu', 'Barre');
