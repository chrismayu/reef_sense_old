# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo_task do
    reef_tank_id 1
    list_id 1
    description "MyString"
    completed false
  end
end
