class AddPictureToArtwork < ActiveRecord::Migration[5.0]
  def up
    add_attachment :artworks, :picture
  end

  def down
    remove_attachment :artworks, :picture
  end
end
