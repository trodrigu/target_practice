FactoryGirl.define do
  factory :target do
    first_name Faker::Name.name.split.first
    last_name Faker::Name.name.split.second
    business Faker::Company.name
  end
end
