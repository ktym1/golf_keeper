# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    #association :player

    course_length 18
    sequence(:name) {|n| "Copper Creek #{n}"}
  end
end



