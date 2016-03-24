FactoryGirl.define do
  pw = Faker::Internet.password
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password pw
    password_confirmation pw
    #role :member
  end
end
