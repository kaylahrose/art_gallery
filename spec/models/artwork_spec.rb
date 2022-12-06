require 'rails_helper'

RSpec.describe Artwork do
  describe 'validations' do
    it {should validate_presence_of :name}
    it "is not valid without a description"
    it "is not valid without a start_date"
    it "is not valid without a end_date" 
  end
  
  describe 'relationships' do
    it {should belong_to :artist}
  end
  describe 'instance methods' do
    describe '#painting?' do
    end
  end
end