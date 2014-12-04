require 'spec_helper'

describe Sinatra::Routing::Monsters do
  describe 'GET /api/v1/monsters' do
    let(:monsters) { create_list :monster, 3 }
    before :each do
      @monsters = monsters
      get '/api/v1/monsters'
    end
    it 'responses with ok' do
      expect(last_response).to be_ok
    end
    it 'returns all monsters' do
      expect(json_response.size).to eql(monsters.size)
    end
    it 'returns expected property values for each monster' do
      monsters.zip(json_response).each do |monster, json_obj|
        json_monster = json_obj['monster']
        expect(monster.id).to eql(json_monster['id'])
        expect(monster.dexterity).to eql(json_monster['dexterity'])
      end
    end
  end
  describe 'GET /api/v1/monsters/:id' do
    let(:monster) { create :monster }
    before :each do
      @monster = monster
      get "/api/v1/monsters/#{monster.id}"
    end
    it 'responses with ok' do
      expect(last_response).to be_ok
    end
    it 'returns expected property values' do
      json_monster = json_response['monster']
      expect(monster.id).to eql(json_monster['id'])
      expect(monster.dexterity).to eql(json_monster['dexterity'])
    end
  end
end
