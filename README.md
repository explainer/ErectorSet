hy# ErectorSet
This is a construction zone, used for building Hyperloop apps.

So far, only the hyperloop gems have been installed, the following things have been done

  rails g hyper:component App

  config/routes.rb was modified.

then, the text was modified.

Be sure to run:

bundle install

RAILS_ENV=development rake db:drop 
RAILS_ENV=development rake db:create 
RAILS_ENV=development rake db:migrate 
RAILS_ENV=development rake db:seed

MySql is used as the default db, so you need to have mysql installed.  You can run this repo with sqlite3, but it will fail in later revisions when Action-Cable requires multitasking in the puma server, and sqlite3 will fail due to more than 1 requester to the db.


