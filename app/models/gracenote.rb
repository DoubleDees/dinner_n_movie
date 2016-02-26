class Gracenote
  def initialize(zip)
    @repsonse = HTTParty.get ("http://data.tmsapi.com/v1.1/movies/showings?startDate=2016-02-26&#{zip}&api_key=#{ENV["GRACENOTE_KEY"]}")
  end

  def
end
