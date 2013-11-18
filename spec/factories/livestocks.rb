# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :livestock do
    scientific_name "MyString"
    image "MyString"
    description "MyText"
    livestock_type "MyString"
    common_name "MyString"
  end
end
