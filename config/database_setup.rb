config = YAML.load_file(File.join(File.dirname(__FILE__), 'database.yml'))
environment = ENV['RACK_ENV']

DataMapper::Logger.new($stdout, :debug) if environment.eql? 'development'

DataMapper.setup(:default, config[environment])
