class Artist < ApplicationRecord
  validates :first_name, :last_name, :birth_date, presence: true

  has_many :artworks
end
