require 'rails_helper'

RSpec.describe Artist do
  describe 'relationship' do
    it {should have_many :artworks}
  end

    it 'orders by most recently created' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5, created_at: (DateTime.now - 5.days))
    rothko = Artist.create!(name: "Rothko", active: true, popularity: 5, created_at: (DateTime.now - 4.days))
    michaelangelo = Artist.create!(name: "Michaelangelo", active: true, popularity: 5, created_at: DateTime.now)
    
    expect(Artist.order_by_created_at).to eq([michaelangelo, rothko, warhol])
  end

  it 'displays created_at'
end