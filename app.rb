require_relative 'config/boot'

# Defines Bestiary Service Sinatra Application
class BestiaryServiceApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    DataMapper.auto_upgrade!
  end

  set :views, proc { File.join(root, 'lib', 'views') }

  register Sinatra::Routing::Monsters
end
