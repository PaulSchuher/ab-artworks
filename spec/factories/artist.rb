require 'ffaker'

FactoryGirl.define do
  factory :artist do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    birth_date { Date.new(rand(1792..2008), rand(1..12), rand(1..28)) }
  end
end
