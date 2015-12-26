FactoryGirl.define do
  factory :target do
    name Faker::Name.name
    business Faker::Company.name
  end
end
