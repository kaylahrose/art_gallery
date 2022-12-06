class Artist < ApplicationRecord
  has_many :artworks

  def self.order_by_created_at
    all.order(created_at: :desc)
  end
end