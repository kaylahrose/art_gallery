class Artwork < ApplicationRecord
  belongs_to :artist
  validates :name, presence: true
  
end