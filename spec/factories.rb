FactoryGirl.define do
  factory :user do
    name "John Doe"
    email "jdoe@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end