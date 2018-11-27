import requests
import json
from pprint import pprint

url = 'https://wger.de/api/v2/exercise/'
headers = {'Accept': 'application/json',
            'Authorization': 'Token 8adc1562cfc584caf02f888dc70e3b0799bd0456'}


response = requests.get(url, headers = headers)
json_data = json.loads(response.text)
# pprint (json_data)

workouts = json_data
# curl -X GET https://wger.de/api/v2/workout/ \
#      -H 'Authorization: Token 8adc1562cfc584caf02f888dc70e3b0799bd0456'
