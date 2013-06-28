# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :update_code do
    reef_tank_id 1
    reef_tank_arduino_id "MyString"
    sent_email false
    message "MyText"
    priority "MyString"
    display_site_wide false
  end
end
