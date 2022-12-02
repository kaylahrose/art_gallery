require 'rails_helper'

RSpec.describe 'The Artists show page' do
    it 'displays the artists' do
      warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
      rothko = Artist.create!(name: "Rothko", active: true, popularity: 5)
      painting = Artwork.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true, artist: warhol)
      visit "/artists/#{warhol.id}"

      expect(page).to have_content(warhol.name)
      expect(page).to have_content(warhol.active)
      expect(page).to have_content(warhol.popularity)
      expect(page).to_not have_content(painting.name)
      expect(page).to_not have_content(rothko.name)
    end
end