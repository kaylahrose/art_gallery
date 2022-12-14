require 'rails_helper'

RSpec.describe 'The Artists index page' do
  it 'displays the artists' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
    rothko = Artist.create!(name: "Rothko", active: true, popularity: 5)
    painting = Artwork.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true, artist: warhol)
    visit "/artists"

    expect(page).to have_content(warhol.name)
    expect(page).to have_content(rothko.name)
    expect(page).to_not have_content(painting.name)
  end
  
  it 'displays created_at' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
    rothko = Artist.create!(name: "Rothko", active: true, popularity: 5) 
    visit "/artists"

    expect(page).to have_content(warhol.created_at)
    expect(page).to have_content(rothko.created_at)
  end

  it 'displays link to create a new artist' do
    visit "/artists"
    click_link 'New Artist'

    expect(current_path).to eq("/artists/new")
  end

  it 'creates new artist with form' do
  end
end