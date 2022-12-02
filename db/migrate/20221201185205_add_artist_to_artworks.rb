class AddArtistToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_reference :artworks, :artist, foreign_key: true
  end
end
