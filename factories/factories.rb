FactoryGirl.define do
  factory :monster, class: MonsterMapper do
    sequence(:name) { |n| "Monster #{n}" }
    charisma 1
    constitution 1
    dexterity 1
    intelligence 1
    strength 1
    wisdom 1
  end
end
