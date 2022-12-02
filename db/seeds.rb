# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Artwork.destroy_all
Artist.destroy_all

10.times {Artist.create!(
            name: Faker::Artist.unique.name, 
            active: [true, false].sample, 
            popularity: rand(6)
            )}

Artist.all.each do |artist|
  artist.artworks.create!(
    name: Faker::JapaneseMedia::StudioGhibli.unique.movie,
    medium: Faker::Color.hex_color,
    for_sale: [true, false].sample,
    value: rand(1_000_000)
  )
end
