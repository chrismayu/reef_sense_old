# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alarm_history do
    arduino_id "MyString"
    parameter "MyString"
    sign "MyString"
    alarm_value ""
    actual_value 1
    message_sent "MyText"
    sent_to_email "MyString"
    email_sent false
  end
end
