# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :arduino do
    reef_tank_id 1
    parameter_setup "MyText"
    reef_tank_arduino_id "MyString"
    arduino_board_type "MyString"
  end
end
