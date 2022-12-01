# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

# require 'pry'; binding.pry

artists = 50.times {Artist.create!(
            name: Faker::Artist.unique.name, 
            active: [true, false].sample, 
            popularity: rand(6)
            )}

artitsts.each do |artist|
  artist.artworks.create!(
    name: Faker::JapaneseMedia::StudioGhibli.unique.movie,
    medium: Faker::Color.hex_color,
    boolean: [true, false].sample,
    value: rand(1_000_000)
  )
end
