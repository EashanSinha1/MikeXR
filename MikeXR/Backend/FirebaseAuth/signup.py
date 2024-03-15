import requests
import json
 
def signup(email: str, password: str):
   body = {
       "email": email,
       "password": password
   }
   response = requests.post(url="http://127.0.0.1:1234/signup", json=body)
   return response.text

def login(email: str, password: str):
   body = {
       "email": email,
       "password": password
   }
   response = requests.post(url="http://127.0.0.1:1234/login", json=body)
   return json.loads(response.text)["token"]

def ping(token: str):
   headers = {
       'authorization': token
   }
   response = requests.post(url="http://127.0.0.1:1234/ping", headers=headers)
   return(response.text)

jwt_token = login("abcd@abcd.com", "password")
print("jwt token ", jwt_token)
print("ping test ", ping(jwt_token))

#print(login("abcd@abcd.com", "password"))
#print(signup("abcd@abcd.com", "password"))