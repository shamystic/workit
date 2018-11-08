# workit
Workout application


```
# Python interpreter
>>> db.create_all()
>>> from app import User
>>> user_1 = User(username = 'Shamikh', email = 'ssh50@duke.edu')
>>> db.session.add(user_1)
>>> db.session.commit()
>>> User.query.all()
>>> User.query.filter_by(username = 'Shamikh')
```