# AB Coding Test

This app is just a coding test.

# Installation process:

* Install RVM and Ruby version 2.4 using it

* Install MySQL

* Execute following commad in working directory `cp config/database.yml.example config/database.yml`

* Put your MySQL credentials into `config/database.yml` file

* Run `bundle install` in the working directory

* Run `bundle exec rake db:setup`

* You can run tests using `bundle exec rspec`

* Run `bundle exec rails server`

* Now you can access application through http at `localhost:3000`
