require 'rails_helper'

RSpec.describe 'Artists artworks index' do
  it 'shows each artwork associated with that artist' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
      rothko = Artist.create!(name: "Rothko", active: true, popularity: 5)
      michaelangelo = Artist.create!(name: "Michaelangelo", active: true, popularity: 5)
      painting = Artwork.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true, artist: warhol)
      painting_2 = Artwork.create!(name: "Mona Lisa", medium: "oil", value: 9834527, for_sale: true, artist: rothko)
      painting_3 = Artwork.create!(name: "The David", medium: "oil", value: 9834527, for_sale: true, artist: michaelangelo)
      painting_4 = Artwork.create!(name: "Untitled", medium: "oil", value: 9834527, for_sale: true, artist: rothko)

      visit "artists/#{rothko.id}/artworks"
      expect(page).to have_content(painting_2.name)
      expect(page).to have_content(painting_4.name)
  end
  it 'shows each artworks attributes'
  
end