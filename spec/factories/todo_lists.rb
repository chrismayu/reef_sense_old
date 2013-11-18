# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo_list do
    reef_tank_id 1
    description "MyText"
    name "MyString"
  end
end
