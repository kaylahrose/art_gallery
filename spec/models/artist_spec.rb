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

  it 'counts artwork for specific artist' do
    warhol = Artist.create!(name: "Warhol", active: true, popularity: 5, created_at: (DateTime.now - 5.days))

    painting = warhol.artworks.create!(name: "Starry Night", medium: "oil", value: 9834527, for_sale: true)
    painting_2 = warhol.artworks.create!(name: "Mona Lisa", medium: "oil", value: 9834527, for_sale: true)
    painting_3 = warhol.artworks.create!(name: "The David", medium: "oil", value: 9834527, for_sale: true)

    expect(warhol.artwork_count).to eq(3)
  end
end