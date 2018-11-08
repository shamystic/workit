# workit
Workout application


```
# Python interpreter
 from app import db
>>> db.create_all()
>>> from app import User
>>> user_1 = User(username = 'Shamikh', email = 'ssh50@duke.edu')
>>> db.session.add(user_1)
>>> db.session.commit()
>>> User.query.all()
>>> User.query.filter_by(username = 'Shamikh')
```

Relationships in SQLAlchemy: 
1. https://docs.sqlalchemy.org/en/latest/orm/basic_relationships.html