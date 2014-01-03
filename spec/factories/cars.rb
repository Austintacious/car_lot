# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "Gunmetal"
    year 1999
    milage 1
    description "This car's a beaut'!"
  end
end
