from app import db
from app import *
from add_equipment import equipment
from get_workouts import workouts
# import json
from pprint import pprint

db.create_all()

equipment_list = []
workout_list = []

for e in equipment:
	if (e not in equipment):
		equipment_list.append(e)
		e_obj = Equipment(name = e)
		db.session.add(e_obj)
db.session.commit()

# pprint(workouts)

for w in workouts['results']:
	# pprint(w)
	if (w['name'] and w['name'] not in workout_list):
		workout_list.append(w['name'])
		# print(w['muscles'])
		e_obj = Exercise(name = w['name'], body_part = str(w['muscles']))
		db.session.add(e_obj)
db.session.commit()

# user_1 = User(username = 'Shamikh', email = 'ssh50@duke.edu')
# db.session.add(user_1)
# >>> db.session.commit()
# >>> User.query.all()
# >>> User.query.filter_by(username = 'Shamikh')
