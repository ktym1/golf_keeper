FactoryGirl.define do
  factory :player do
    association :player
      username "kmui"
      email "kerrymui@test.com"
      password "testing"
      password_confirmation "testing"
      handicap_index 10
      gender "M"
  end
end