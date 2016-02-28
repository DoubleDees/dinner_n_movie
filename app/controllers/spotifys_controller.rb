class SpotifysController < ApplicationController
  def index
    r = Spotify.new(params[:genre])
    render json: r.playlists

  end

  def show
    r = Spotify.new(params[:genre])
    render json: r.random_playlist
  end
end
