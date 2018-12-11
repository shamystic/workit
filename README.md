# CampusFitness

## Set up & Deployment

The following commands to set up our web application can be run from a Mac/Linux, or a Windows Ubuntu Bash. The first step is to clone this repository. Then, open a terminal/command line and cd to the directory of the repository and run the following commands. 

```
# Database setup
# First, with psql installed, ensure the service is enabled using 
sudo service postgresql restart

# Switch to 'postgres' user to be able to interact with database
sudo -i -u postgres

# Create the database using create.sql
dropdb dfx; createdb dfx; psql dfx -af sql/create.sql

# Load data from load.sql
psql dfx -af sql/load.sql

# View/test the data
psql dfx

# View relations
\d

# Test query
select * from exercise;

# Exit psql 
\q 

# Install dependencies
pip install -r requirements.txt

# Run the web application 
python app.py 
# OR 
python3 app.py
```





## Additional Information

### Description 

As a group, we found that many of us shared a common interest in fitness. After some discussion, however, we also realized that each of us has our own workout plans that all seem to remain relatively stagnant. This sparked our interest in finding a novel method to broaden the scope of our workout routines by adding new exercises that we may not have heard of before, but that aligned well with our fitness goals and available equipment. We were also interested in incorporating local fitness classes into our schedules, because these are a great way to stay fit while also interacting with friends and other students. An one-stop application that combines amateur-friendly exercise information with Duke-specific fitness courses did not exist, so we figured that this would be a great opportunity to help fix this issue. Finally, we all wanted to develop a practical way to design our own workout routines, and a system that would allow these routines to be shared with others. 

System Details 
We visited sites like bodybuilding.com and recreation.duke.edu in order to assess the scope of work already done in this area. We noticed that bodybuilding.com had an immense list of exercises, and the related body parts and types of equipment needed. Although this is useful for the average person, this doesn’t provide any particular help to Duke students. In order to connect it to Duke’s fitness courses, we visited Duke’s website, but this page had generally limited information of fitness in general - typically focusing on just classes held here at Duke. Our goal was to combine the distinct utilities of each site in order to provide an interface for the average gym attendees here at duke. Furthermore, we wanted to be able to provide a social aspect, in which users can see which classes and workout circuits other users prefer. 
The backend is built with the Flask Python framework. The database is integrated using a PostgreSQL database which we have been running locally. The database is set up with a total of seven tables. There are three relationship sets which include hasExercise, ownsWorkout, and hasFavoriteClass. These help to relate workouts and exercises, users and workouts, and users and classes respectively. We elected for a number of relation sets in order to reduce the amount of tuples within each table, thus simplifying queries. In addition to these relational sets, there are five main entity sets. The Person table provides information about every user such as his/her name, email, password, and his/her fitness goal. This table is populated as new users visit the site and register for the service. The Exercise table forms a list of exercises along with their related body part and required equipment. This table was generated with the help of a Python script which scraped exercise information from bobybuilding.com and placed the results in an Excel spreadsheet. The Workouts table contains information about each workout that is created including the name of the workout (i.e. “Hemanth’s Chest Workout”) and the type of workout (options include Mind and Body, Strength and Endurance, Weight Loss, and Aerobics and Balance). Lastly, the FitnessClass table contains details about any particular fitness class, such that users can find helpful criteria about any particular course. This information was taken directly from the Duke Group Fitness schedule that can be found [here](https://recreation.duke.edu/sites/default/files/atoms/files/FitnessSch.pdf).

In order to interact with these tables, the user would either sign in or enter information about particular things they are looking for. Based on which option the user chooses, a query is made to the PostgreSQL database which then returns tuples to the Python backend. Flask is then able to insert this information into the frontend in order for it to be neatly returned to the user. For example, a user may choose to create a workout containing both “Bicep” and “Triceps” exercises. This request would first create a new row in the Workouts table containing the name of the workout and workout type. A new row will then be added to the ownsWorkout table containing the email of the user who created the workout and the workout id. Lastly, a row for each exercise selected will be added to the hasExercise table containing the workout id and the exercise id.


