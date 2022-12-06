require 'rails_helper'

RSpec.describe "Artwork link" do
  it 'has a link to artwork index on every page' do
    visit "artists" 
    click_link 'All Artwork'

    expect(current_path).to eq('/artworks')

    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
    visit "/artists/#{warhol.id}"
    click_link 'All Artwork'

    expect(current_path).to eq('/artworks')
  end

  it 'has a link to artist index on every page' do
    visit "artworks" 
    click_link 'All Artists'

    expect(current_path).to eq('/artists')

    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
    visit "/artists/#{warhol.id}"
    click_link 'All Artists'

    expect(current_path).to eq('/artists')
  end
end
