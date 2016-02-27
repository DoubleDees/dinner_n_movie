class GracenotesController < ApplicationController
  def index

  end

  def show
    r = Gracenote.new("mongolian")
    render json: r.playlists
  end
end
