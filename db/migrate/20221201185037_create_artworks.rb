class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :medium
      t.boolean :for_sale
      t.integer :value

      t.timestamps
    end
  end
end
