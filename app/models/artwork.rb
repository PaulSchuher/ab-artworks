class Artwork < ApplicationRecord
  validates :title, :artist_id, presence: true
  validates :year, numericality: { only_integer: true }, length: { is: 4 }
  validates_associated :artist

  belongs_to :artist
end
