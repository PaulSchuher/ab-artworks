require 'rails_helper'

RSpec.describe Artwork, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :artist_id }
  it { should validate_numericality_of(:year).only_integer }
  it { should belong_to :artist }

  let(:artwork) { create(:artwork) }
  
  describe '#toggle_publishment!' do
    let(:artwork) { create(:artwork, published: true) }
    subject { artwork.toggle_publishment! }

    it { expect{subject}.to change(artwork, :published).to(false) }
  end

  describe '#picture_url' do
    subject { artwork.picture_url }
    it { expect(subject).to include('.jpg') }
  end
end
