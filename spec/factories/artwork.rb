require 'ffaker'

FactoryGirl.define do
  factory :artwork do
    artist
    title { FFaker::Book.title }
    year { rand(1800..2017) }
    published { rand(0..1) }
    mediums { FFaker::Lorem.words.join(',') }
    picture { File.open("#{Rails.root}/db/seed_images/#{rand(1..5)}.jpg") }
  end
end
