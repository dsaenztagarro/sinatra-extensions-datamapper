module Sinatra
  module Routing
    # Routes for monsters
    module Monsters
      def self.registered(app)
        show_monsters = lambda do
          @monsters = MonsterMapper.all.map do |obj|
            Monster.new(obj.attributes)
          end
          rabl :'monsters/index', format: 'json'
        end

        show_monster = lambda do
          datamapper = MonsterMapper.get(params[:id].to_i)
          @monster = Monster.new(datamapper.attributes)
          rabl :'monsters/show', format: 'json'
        end

        app.get "/api/#{API::VERSION}/monsters", &show_monsters
        app.get "/api/#{API::VERSION}/monsters/:id", &show_monster
      end
    end
  end
end
