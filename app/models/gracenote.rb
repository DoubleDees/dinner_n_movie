

class Gracenote
  def initialize(genre)
    @response = HTTParty.get("https://api.spotify.com/v1/search?q=#{genre}&type=playlist")
  end

  def playlists
  playlist = @response["playlists"]["items"]
  playlist.map{|l| l["external_urls"]}.sample
  end


end
