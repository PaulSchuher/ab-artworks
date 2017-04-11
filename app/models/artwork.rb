class Artwork < ApplicationRecord
  validates :title, :artist_id, presence: true
  validates :year, numericality: { only_integer: true }, length: { is: 4 }
  validates_associated :artist

  has_attached_file :picture, styles: { thumb: "250" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  belongs_to :artist

  def toggle_publishment!
    update_attribute :published, !published
  end

  def picture_url
    picture.url(:thumb)
  end
end
