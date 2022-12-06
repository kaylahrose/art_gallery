require 'rails_helper'

RSpec.describe 'the Artists new page' do
  it 'can create a new artist' do
    visit "/artists/new"
    fill_in("Name", with: "Rothko") 
    fill_in("Active", with: false)
    fill_in("Popularity", with: 4)
    click_button('Create Artist')

    expect(current_path).to eq("/artists")
    expect(page).to have_content("Rothko")
  end
end