class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
    # def create
    #     artwork = Artwork.new({
    #         created_at = Datetime.new
    #         updated_at = 
    #     })
    # end
  def show
    @artist = Artist.find(params[:id])
  end
end