[![Build Status](https://travis-ci.org/dsaenztagarro/bestiary-service.png)](https://travis-ci.org/dsaenztagarro/bestiary-service)
[![Code Climate](https://codeclimate.com/github/dsaenztagarro/bestiary-service/badges/gpa.svg)](https://codeclimate.com/github/dsaenztagarro/bestiary-service)
[![Coverage Status](https://coveralls.io/repos/dsaenztagarro/bestiary-service/badge.png?branch=master)](https://coveralls.io/r/dsaenztagarro/bestiary-service?branch=master)
[![Dependency Status](https://gemnasium.com/dsaenztagarro/bestiary-service.svg)](https://gemnasium.com/dsaenztagarro/bestiary-service)

# bestiary-service

This modular sinatra app takes a different approach that lead to use sinatra
extensions to add new routes, instead of using multiple sinatra applications
(as controllers) loaded as a rack stack.

Also this project takes the datamapper pattern for ORM.