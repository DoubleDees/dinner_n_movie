

class Gracenote
  def initialize(genre)
    @response = HTTParty.get("https://api.spotify.com/v1/search?q=#{genre}&type=playlist")
  end

  def random_playlist
  playlist = @response["playlists"]["items"]
  playlist.map{|l| l["external_urls"]}.sample
  end

  def all_playlists
    all_playlists = @response["playlists"]["items"]
    all_playlists.each {|l| l["external_urls"]}
  end


end
