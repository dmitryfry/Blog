FactoryGirl.define do
  factory :comment do
    author "Evgrat"
    sequence(:body) { |n| "comment body #{n}"}
  end
end
