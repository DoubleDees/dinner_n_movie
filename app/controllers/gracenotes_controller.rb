class GracenotesController < ApplicationController
  def index
    r = Gracenote.new("japanese")
    render json: r.all_playlists

  end

  def show
    r = Gracenote.new("sushi")
    render json: r.random_playlist
  end
end
