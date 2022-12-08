require 'rails_helper'

RSpec.describe 'Artists edit page' do
  it 'can display update link from show page' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
    painting = Artwork.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true, artist: warhol)
    visit "/artists/#{warhol.id}"
    click_link 'Update Artist'

    expect(current_path).to eq("/artists/#{warhol.id}/edit")
  end

  it 'can update an artist' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5)
    painting = Artwork.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true, artist: warhol)
    visit "/artists/#{warhol.id}/edit" 
    expect(page).to have_field('Name', with: 'Warhol')
    expect(page).to have_field('Popularity', with: 5)
    fill_in("Name", with: "Rothko") 
    click_button 'Update Artist'
    save_and_open_page  

    expect(current_path).to eq("/artists/#{warhol.id}")
    expect(page).to have_content("Rothko")
    warhol.reload
    expect(warhol.name).to eq("Rothko")
  end
end