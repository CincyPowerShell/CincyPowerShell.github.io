import requests
url='https://www.python.org'
r = requests.get(url)
print r.status_code
