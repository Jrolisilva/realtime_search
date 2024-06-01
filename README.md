
## Realtime Search Analytics
This project is a realtime search box application built with Ruby on Rails and vanilla JavaScript.

The application allows users to search for articles and displays analytics on what users are searching for. 

The search terms are recorded in realtime and summarized to show trends and popular searches.

## Features
Realtime search box
Analytics display for search terms
Filters incomplete searches and logs only completed search terms

Getting Started

`Ruby 3.0.0`
`Rails 7.0.8`
`PostgreSQL`

### Clone the repository:

`git clone https://github.com/yourusername/realtime-search-analytics.git`

### Install the dependencies:

`bundle install`

`rails db:create`
`rails db:migrate`

`rails server`
Visit http://localhost:3000 in your web browser to see the application running.

Configuration
Update the database configuration in config/database.yml to match your PostgreSQL setup. For example, if you're running PostgreSQL in a Docker container, ensure your database.yml file is configured correctly:


To run the test suite, first, ensure you have RSpec installed:

`rails generate rspec:install`

Then, you can run the tests using:

`bundle exec rspec`

### Example Usage
When a user types in the search box, the application logs complete search terms and ignores incomplete ones. For example:

User searches for "What is a good car":

Logs "What is a good car"
Another user searches for "How is Emil Hajric doing":

Logs "How is Emil Hajric doing"
The application updates the existing search term if the new term is a longer version of an existing one.
