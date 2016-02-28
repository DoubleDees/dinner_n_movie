class GracenotesController < ApplicationController
  def index
    r = Gracenote.new(params[:genre])
    render json: r.all_playlists

  end

  def show
    r = Gracenote.new(params[:genre])
    render json: r.random_playlist
  end
end
