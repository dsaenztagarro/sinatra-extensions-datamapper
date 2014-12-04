require 'database_cleaner'
require 'factory_girl'
require 'json'
require 'rack/test'
require_relative 'support/coverage'

ENV['RACK_ENV'] = 'test'

# Load application code
require File.expand_path '../../app.rb', __FILE__

# Load factories
FactoryGirl.definition_file_paths = %w(./factories)
FactoryGirl.find_definitions

# Module for including sinatra rspec helpers
module RSpecMixin
  include Rack::Test::Methods
  include FactoryGirl::Syntax::Methods

  def app() BestiaryServiceApp end

  def json_response
    JSON.parse(last_response.body)
  end
end

RSpec.configure do |config|
  config.color = true
  config.formatter = 'documentation'
  config.include RSpecMixin

  config.before(:suite) do
    DataMapper.auto_migrate!
    FactoryGirl.lint
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
