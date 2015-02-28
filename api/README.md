RFID API
==============

A [Grape](http://github.com/intridea/grape) API mounted on Rails.

See
---

An instance of this app is running on [rfidapi.herokuapp.com](https://rfidapi.herokuapp.com/api/upc_descriptions).

Run
---

Local:

```
bundle install
rake db:migrate
rails s
```

Heroku:
Step by step instructions for setting up an API on Heroku with Grape.

- First create your rails application ``` rails new yourapp ```
- add the grape and grape-entity gems
- follow the grape documentation for creating your RestFUL API
- make a git repo ``` git init ```
- add files ``` git add . ```
- commit ``` git commit -m "Adds Rails API with Grape" ```
- create heroku ``` heroku create ```
- push to heroku ``` git push heroku master ```
- setup database ``` heroku run rake db:migrate ```
- open your new app! ``` heroku open ```
