# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_livestock do
    reef_tank_id 1
    scientific_name "MyString"
    description "MyText"
    image "MyString"
    livestock_type "MyString"
    common_name "MyString"
  end
end
