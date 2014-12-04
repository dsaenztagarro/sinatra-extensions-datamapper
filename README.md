[![Build Status](https://travis-ci.org/dsaenztagarro/bestiary-service.png)](https://travis-ci.org/dsaenztagarro/bestiary-service)
[![Code Climate](https://codeclimate.com/github/dsaenztagarro/bestiary-service/badges/gpa.svg)](https://codeclimate.com/github/dsaenztagarro/bestiary-service)
[![Coverage Status](https://coveralls.io/repos/dsaenztagarro/bestiary-service/badge.png?branch=master)](https://coveralls.io/r/dsaenztagarro/bestiary-service?branch=master)
[![Dependency Status](https://gemnasium.com/dsaenztagarro/bestiary-service.svg)](https://gemnasium.com/dsaenztagarro/bestiary-service)

# sinatra-extensions-datamapper

This modular sinatra application takes a different approach that lead to use 
Sinatra extensions to add new routes, instead of creating subclasses of 
`Sinatra::Base` (as controllers) loaded as a rack stack.

With this analysis we get an easier way for testing the whole application, as
it is not needed to redefine the `app` method for tests of each `Sinatra::Base`
subclass.

Also this project takes the datamapper pattern for ORM as an experimental 
exercise. As Hibernate in the Java land, no migrations are needed.