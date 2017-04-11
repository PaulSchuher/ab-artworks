class ArtworksController < ApplicationController
  before_action :load_artwork, except: [:index]

  def index
    respond_to do |format|
      format.html
      format.json do
        @artworks = Artwork.includes(:artist).limit 5
        render json: @artworks, include: :artist
      end
    end
  end

  def show

  end

  def publish
    success = @artwork.publish!

    respond_to do |format|
      format.json { render json: { success: success } }
    end
  end

  private

  def load_artwork
    @artwork = Artwork.find params[:id]
  end

end
