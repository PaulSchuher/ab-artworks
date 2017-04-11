# AB Coding Test

This app is just a coding test.

Description of the task:
> Create a Rails app which contains artwork and artist resources.
> The artwork should have at a minimum a title, an artists name, a year, mediums and an image.
> The artwork can be published, or un published.
> Display all the artworks in a paginated view.  When the artwork image / title is clicked, you view a detail page of the artwork.
> On both the all artworks and artwork detail pages, there should be a 'star' that you can click to publish / unpublish the artwork.
> Please make use of HAML, SASS, Coffeescript and Vue.js.


# Installation process:

* Install RVM and Ruby version 2.4 using it

* Install MySQL

* Install imagemagick (required for paperclip gem)

* Execute following commad in working directory `cp config/database.yml.example config/database.yml`

* Put your MySQL credentials into `config/database.yml` file

* Run `bundle install` in the working directory

* Run `bundle exec rake db:setup`

* You can run tests using `bundle exec rspec`

* Run `bundle exec rails server`

* Now you can access application through http at `localhost:3000`
