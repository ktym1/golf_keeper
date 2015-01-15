FactoryGirl.define do
  factory :hole do
      association :course
      par 1
      sequence(:hole_number, (1..18).cycle) {|n| "#{n}".to_i }    
      sequence(:handicap_rating, (1..18).cycle) {|n| "#{n}".to_i }
      gender "M"
  end
end