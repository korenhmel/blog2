FactoryGirl.define do
  factory :user do
  	username "koren"
  	email    "email@email.com"
  	 # sequence(:email) {|n| "email#{n}@amail.com "}
  	password "password"
  end 
end