# LocalEat

LocalEat is a web app that helps people find local independent cafes and restaurants in different cities.
Developed in Ruby on Rails (RoR) using TDD for Hack2021 (hosted by HackerEarth).

## Requirements
* Ruby 2.7.2
* Yarn
* Bundler 2.1.4
* Postgres - make sure your postgres service is running

## Installation and Set Up

After cloning the project:
* Copy config/database.yml.example to config/database.yml and populate username and password with your postgres credentials.
* Run 
  ```
  bundle install 
  ```
* Run 
  ```
  yarn install 
  ```
* Run 
  ```
  bundle exec rails db:create db:migrate db:seed 
  ```
* Run 
  ```
  bundle exec rails s
  ```
* Visit localhost:3000 to see the app running.
