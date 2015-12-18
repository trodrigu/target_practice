FactoryGirl.define do
  factory :cadence do
    permutation "#{firstname}#{domain}"
    target
  end

end
