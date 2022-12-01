require 'rails_helper'

RSpec.describe 'The Artists show page' do
    it 'displays the artists' do
      artist = Artist.create(name: "bob ross", )
    end
end