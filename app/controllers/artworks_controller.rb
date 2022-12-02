class ArtworksController < ApplicationController
  def index 
    @artworks = Artwork.all
  end

  def show
    @artwork = index.find(params[:id])
  end
end