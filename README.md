# Task Manager(API)
A mini Rails application that implements associations.
## Description
This is a simple Rails application that I developed to sharpen my skills on developing Rails applications, Active Record Associations and API development.

## Getting Started
### Setup Requirements
- Operating System: Any POSIX based Operating System should suffice.
- Ruby installed on your system(version 2.7.3 and above).
- Rails (version 7 and above)
- Code editor/IDE to view and/or contribute to the project(preferably VScode or RubyMine IDE).
- Git installed on your system.

### Setup
To clone this repository in your PC, run:

        git clone git@github.com:Samueelx/task-manager-api.git

`cd` into the project directory and run this command to download the necessary gems/dependencies:

        bundle install

## Running the program
### Migrate the database
For this application to run, you first need to set up the database schema. To do so, you need to run a migration. Use this command to run the migration(at the root of the project direcory):

        rails db:migrate

Then, populate the database tables with sample data using the following command (at the root of the project direcory):

        rails db:seed

### Running the server
To run the server, execute the command below in your terminal:

        rails s

As the server is running, you can test out the endpoints from [postman](https://www.postman.com/)

The following endpoints are accessible:
- `GET /tasks`
- `GET /tasks/:id`
- `DELETE /tasks/:id`
- `PATCH /tasks/:id`
- `POST /tasks`
- `PUT /tasks/:id`

## Authors
[Samuel Gitimu](https://github.com/Samueelx)

## License
This project is under the MIT license.