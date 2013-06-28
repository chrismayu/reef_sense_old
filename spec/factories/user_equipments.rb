# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_equipment do
    reef_tank_id 1
    reef_tank_arduino_id "MyString"
    description "MyText"
    equipment_name "MyString"
    image "MyString"
    equipment_type "MyString"
  end
end
