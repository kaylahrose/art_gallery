require 'rails_helper'

RSpec.describe 'The Artwork index page' do
    it 'displays the artworks' do
      warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
      rothko = Artist.create!(name: "Rothko", active: true, popularity: 5)
      michaelangelo = Artist.create!(name: "Michaelangelo", active: true, popularity: 5)
      painting = Artwork.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true, artist: warhol)
      painting_2 = Artwork.create!(name: "Mona Lisa", medium: "oil", value: 9834527, for_sale: true, artist: rothko)
      painting_3 = Artwork.create!(name: "The David", medium: "oil", value: 9834527, for_sale: true, artist: michaelangelo)
      visit "/artworks"

      expect(page).to have_content(painting.name)
      expect(page).to have_content(painting.medium)
      expect(page).to have_content(painting.value)
      expect(page).to have_content(painting.for_sale)
      expect(page).to have_content(painting_2.name)
      expect(page).to have_content(painting_3.name)
      expect(page).to_not have_content(rothko.name)
    end
end