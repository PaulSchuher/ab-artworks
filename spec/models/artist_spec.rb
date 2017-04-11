require 'rails_helper'

RSpec.describe Artist, type: :model do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :birth_date }

  it { should have_many :artworks }
end
