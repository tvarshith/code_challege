#Challenge:#

For the coding exercise, you will need to write a simple service for storing and retrieving events 
using a framework (Ruby, Rails) and database (MySQL, PostgreSQL). 
 
An event consists of a timestamp, a string, and the hostname from which it originated. 
 
####Event
  Timestamp 
  String 
  Hostname 
 
Events can come from multiple "orgs" (this system is multi­tenant, single instance of software 
serves multiple customers). 
Construct the simplest thing you can think of that'll store these events and handle the following 
queries, both in reverse chronological order: 
* the last N events for an org 
* the last N events for a specific host within an org 

#Assumptions:#

The String in event can be anything like description, action, etc. It is action in this case.
Assuming the hostname is a string as far as name types usually go. 

#SETUP#

####Ruby Version
 
 Ruby 2.2.5 on ubuntu 14.04

The only issue encountered due to the ruby version were mysql gem version errors. Specifying the mysql version according to the eror mentioned should suffice.

App uses mysql as database so install if necessary, change the yaml files as necessary.

A seed database has already been provided.

A simple rake db: reset should be enough which will Run db:drop and db:setup.

db:setup Runs db:schema:load and db:seed.



Accessing the  last N events for an organization in reverse chronological order

`GET /organizations/:id/events/search_recent?count=n`

example:

`http://localhost:3000/organizations/1/events/search_recent?count=2`

Accessing last N events for a specific host within an organization in reverse chronological order

`GET /organization/:id/events/search_recent?hostname=host1&count=n`

example:

`http://localhost:3000/organizations/1/events/search_recent?hostname=twerve&count=1`

#Rails console:#

We can also access the events and organizations through rails console.

Event.all to list all events

Organization.all to list all organization registered.

We can modify the above queries to get specific results or make the desired changes.


