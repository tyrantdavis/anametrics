# Anametrics
___
Anametrics is an analytics service that integrates with web applications to track events on websites.

## Development Objectives
* Create a client-side JavaScript snippet that allows a user to track events on their website
* A server-side API that captures and saves those events to a Database
* Rails application that displays the captured event data for a user

___
## Application Features:
* Allow users to sign-up for a free account 
* Allow users to sign-in and sign-out
* Allow users to register an application for event tracking
* Allows associating events with the registered application
* Allow users receive incoming events in an API controller
* Uses JavaScript to capture client-side events in my application
* Graphs events for each registered application
___
## Setup 

#### Languages and Frameworks: 
* Ruby version 2.3.3
* Ruby on Rails 5.02 




#### Databases: 
* SQLite (Test, Development) 
* PostgreSQL (Production)

#### Default Development Tools and Gems include:

* Devise  for user authentication
* Pundit for authorization
* Figaro for secure configuration

___
#### Configuration:
Figaro creates a _config/application.yml_ file, which sets up and stores  **_environment variables_**, and adds it into your _.gitignore_ file. The _config/application.example.yml_ file demonstrates the appropriate way to store _environment variables_.


### Create SQL database
```
rake db:create
```

or

### Create Pg database

 ```
 $ pgstart
 $ rake db:create
 ```

### Migrating database

```
$ rake db:migrate
```
### Seed database
```
$ rake db:seed
```

### Start local server

```
$ rails s

   or

$ rails server
```

## Deploy to Heroku for Production

  ```
  $ git push heroku master
  $ heroku run rake db:migrate
  ```
  
