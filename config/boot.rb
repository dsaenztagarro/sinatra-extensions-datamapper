require 'sinatra/base'
# require 'sinatra/reloader'
require 'data_mapper'
require 'pry'

# Rabl config
require 'rabl'
require 'active_support/core_ext'
require 'active_support/inflector'
require 'builder'
Rabl.register!

require_relative 'database_setup'

require_relative '../lib/routes/api'
%w(mappers models routes views).each do |folder|
  Dir.glob("lib/#{folder}/*.rb").each { |path| require_relative "../#{path}" }
end

DataMapper.finalize
