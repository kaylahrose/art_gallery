class ArtistArtworksController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @artworks = @artist.artworks
  end
end