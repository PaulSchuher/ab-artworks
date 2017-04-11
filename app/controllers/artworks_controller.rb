class ArtworksController < ApplicationController
  before_action :load_artwork, except: [:index]

  def index
    respond_to do |format|
      format.html
      format.json do
        @artworks = Artwork.includes(:artist).page(params[:page]).per(3)
        render json: { artworks: @artworks.to_json(include: :artist, methods: [:picture_url]), pages:  @artworks.total_pages, page: @artworks.current_page }
      end
    end
  end

  def toggle_publishment
    success = @artwork.toggle_publishment!

    respond_to do |format|
      format.json { render json: { published: @artwork.published } }
    end
  end

  private

  def load_artwork
    @artwork = Artwork.find params[:id]
  end

end
