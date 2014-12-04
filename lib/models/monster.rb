# Represents a monster of bestiary
class Monster
  attr_accessor :id
  attr_accessor :charisma, :constitution, :dexterity, :intelligence, :strength,
                :wisdom

  def initialize(opts)
    %w(id charisma constitution dexterity intelligence strength
       wisdom).each do |attribute|
      send "#{attribute}=", opts[attribute.to_sym]
    end
  end
end
