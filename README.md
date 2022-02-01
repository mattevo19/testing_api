# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.1.0

* Rails version 7.0.1

* How to use

- Show Get request http://localhost:3000/api/v1/gyms

- Index Get request http://localhost:3000/api/v1/gyms/1

- Update Patch request http://localhost:3000/api/v1/gyms/1 {"gym":{"name":"CHANGE_ME","address":"CHANGE_ME"}} 'Content-Type: application/json'

- Create Post request http://localhost:3000/api/v1/gyms {"gym":{"name":"CHANGE_ME","address":"CHANGE_ME","user_id": "CHANGE_ME"}} 'Content-Type: application/json'

- Destroy Delete request http://localhost:3000/api/v1/gyms/1 returns status code 204 if worked

* Deployment instructions

* Heroku -  heroku run rake db:migrate
  https://devcenter.heroku.com/articles/getting-started-with-rails7