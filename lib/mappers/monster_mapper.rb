# Datamapper class responsible for persisting of monster models
class MonsterMapper
  include DataMapper::Resource

  storage_names[:repo] = 'monsters'

  property :id, Serial
  property :name, String
  property :charisma, Integer
  property :constitution, Integer
  property :dexterity, Integer
  property :intelligence, Integer
  property :strength, Integer
  property :wisdom, Integer
end
