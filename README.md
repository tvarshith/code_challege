# CHALLENGE #

For the coding exercise, you will need to write a simple service for storing and retrieving events 
using a framework (Ruby, Rails) and database (MySQL, PostgreSQL). 
 
An event consists of a timestamp, a string, and the hostname from which it originated. 
 
#### Event ####
  Timestamp 
  String 
  Hostname 
 
Events can come from multiple "orgs" (this system is multi­tenant, single instance of software 
serves multiple customers). 
Construct the simplest thing you can think of that'll store these events and handle the following 
queries, both in reverse chronological order: 
* the last N events for an org 
* the last N events for a specific host within an org 

## ASSUMPTIONS ##

The String in event can be anything like description, action, etc. It is action in this case.
Assuming the hostname is a string as far as name types usually go. 

## SETUP ##

#### Ruby Version
 
 Ruby 2.3.1 on ubuntu 14.04

The only issue encountered due to the ruby version were mysql gem version errors. Specifying the mysql version according to the eror mentioned should suffice.

App uses mysql as database so install if necessary, change the yaml files as necessary.

A seed database has already been provided.

A simple __rake db: reset__ in the beginning  will generate the data to test the service.



**Accessing the  last N events for an organization in reverse chronological order**

`GET /organizations/:id/events/search_recent?count=n`

>example:
`http://localhost:3000/organizations/1/events/search_recent?count=2`

__Accessing last N events for a specific host within an organization in reverse chronological order__

`GET /organization/:id/events/search_recent?host_name=host1&count=n`


>example:
`http://localhost:3000/organizations/2/events/search_recent?host_name=some_host_org1&count=4`

### RAILS CONSOLE ###

We can also access the events and organizations through rails console.

Event.all to list all events

Organization.all to list all organization registered.

We can modify the above queries to get specific results or make the desired changes.

>For example:
the last N events for a specific host within an org

```ruby
Event.where(host_name: 'some_host_org1', organization_id: 1)
```
