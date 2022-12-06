class Artist < ApplicationRecord
  has_many :artworks

  def self.order_by_created_at
    all.order(created_at: :desc)
  end

  def artwork_count
    artworks.count
  end
end