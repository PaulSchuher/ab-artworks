class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string  :title
      t.integer :year, limit: 4
      t.boolean :published, default: false, index: true
      t.string  :mediums
      t.references :artist

      t.timestamps
    end
  end
end
