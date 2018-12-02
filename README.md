Workout application


```
# Switch to 'postgres' user to interact with database
sudo -i -u postgres
# Recreate the database using create.sql
dropdb dfx; createdb dfx; psql dfx -af create.sql
# Load data from load.sql
psql dfx -af load.sql
# View/test the data
psql dfx
\d           # Views relations 
select * from <table_name> 
```




```
# Python interpreter
from app import db
db.create_all()
from app import User
user_1 = User(username = 'Shamikh', email = 'ssh50@duke.edu')
db.session.add(user_1)
db.session.commit()
User.query.all()
User.query.filter_by(username = 'Shamikh')
```





Relationships in SQLAlchemy: 
1. https://docs.sqlalchemy.org/en/latest/orm/basic_relationships.html
2. https://medium.freecodecamp.org/sqlalchemy-makes-etl-magically-easy-ab2bd0df928
3. https://stackoverflow.com/questions/9692962/flask-sqlalchemy-import-context-issue/9695045#9695045


Woah, big change! Few things:
Change the title of your project (lol.)
This might just be a matter of how it was written up in members.txt, but it looks like some members have contributed significantly more than others. That’s not cool; the distribution of work should be fairly shared. If you think this is an accurate assessment and need help addressing this problem, come talk to me/Professor Yang.
Your ER diagram is inconsistent with the schema written in section 4 of your README.
You might not want to consider classes as separate from exercises. Classes could just be groups of exercises. For example, if I search for “legs”, it makes sense to return “squats” (an exercise) but it might also make sense to return “spin” (a class, leg-focused.)
Good job though! Totally fair game to switch topics and I’m happy you made the call to switch if your old subject matter was road-blocking you.

Sarah 
Wilson


Resources
1. https://s3.us-east-2.amazonaws.com/prettyprinted/flask_cheatsheet.pdf
2. Milestone document: https://docs.google.com/document/d/11yxmBUv86-ja9vEM8m_neW0n-UIu0cNmFtObjtKGuho/edit 

=======
Relationships in SQLAlchemy:
1. https://docs.sqlalchemy.org/en/latest/orm/basic_relationships.html
