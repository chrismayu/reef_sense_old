# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reef_tank do
    user_id 1
    setup_date "2013-06-28"
    size 1
    measurement_type "MyString"
    send_email_okay false
  end
end
