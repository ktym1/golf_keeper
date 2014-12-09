# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player_match do
    match_id 1
    round_id 1
    player_1 1
    player_2 1
    player_3 1
    player_4 1
  end
end
