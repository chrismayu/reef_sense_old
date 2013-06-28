# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :maintainence_log do
    reef_tank_id 1
    description "MyText"
    amount "MyString"
  end
end
