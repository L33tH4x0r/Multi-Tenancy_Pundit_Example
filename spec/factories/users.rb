FactoryGirl.define do
  factory :user do
    name 'Austin'
    sequence(:email) { |n| "email#{n}@gmail.com"}
    password 'pw'
  end
end
