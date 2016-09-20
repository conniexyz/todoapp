FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password  "password"
    password_confirmation "password"
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end



=begin
CW: this block has been generated from somehow, no a copy and paste

FactoryGirl.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    password "MyString"
    description "MyString"
    complete false
  end
end
=end
