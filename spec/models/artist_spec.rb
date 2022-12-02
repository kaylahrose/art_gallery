require 'rails_helper'

RSpec.describe Artist do
  describe 'relationship' do
    it {should have_many :artworks}
  end
end