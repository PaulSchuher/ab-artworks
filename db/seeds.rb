# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

10.times do
  artist = Artist.create(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    birth_date: Date.new(rand(1792..2008), rand(1..12), rand(1..28)))

  # Create random amount (up to 5) of artworks for artist
  rand(1..5).times do
    Artwork.create(
      artist: artist,
      title: FFaker::Book.title,
      year: rand(1800..2017),
      published: rand(0..1),
      mediums: FFaker::Lorem.words.join(','))
  end
end
