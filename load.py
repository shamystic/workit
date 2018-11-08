from app import db
from app import *
from add_equipment import equipment
from get_workouts import workouts

db.create_all()
for e in equipment: 
	e_obj = Equipment(name = e)
	db.session.add(e_obj)
db.session.commit()	

for w in workouts: 
	e_obj = Exercise(name = w.name, body_part = str(w.muscles))
	db.session.add(e_obj)
db.session.commit()	



# user_1 = User(username = 'Shamikh', email = 'ssh50@duke.edu')
# db.session.add(user_1)
# >>> db.session.commit()
# >>> User.query.all()
# >>> User.query.filter_by(username = 'Shamikh')