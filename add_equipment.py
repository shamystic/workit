import requests
import json
from pprint import pprint

url = 'https://wger.de/api/v2/equipment/'
headers = {'Accept': 'application/json',
           'Authorization': 'Token 8adc1562cfc584caf02f888dc70e3b0799bd0456'}


response = requests.get(url, headers = headers)
json_data = json.loads(response.text)
pprint (json_data)

equipment = [x['name'] for x in json_data['results']]
print (equipment)