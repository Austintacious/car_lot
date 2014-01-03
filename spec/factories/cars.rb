# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "MyString"
    year 1
    milage 1
    description "MyText"
  end
end
