require 'rails_helper'

RSpec.describe 'the Artists new page' do
  it 'can create a new artist' do
    visit "/artists/new"
    fill_in("Name", with: "Rothko") 
    fill_in("Active", with: false)
    fill_in("Popularity", with: 4)
    click_button('Create Artist')
    artist = Artist.last
    

    expect(current_path).to eq("/artists")
    expect(page).to have_content("Rothko")
    expect(artist.name).to eq("Rothko")
    expect(artist.active).to be false
    expect(artist.popularity).to eq(4)
  end
end