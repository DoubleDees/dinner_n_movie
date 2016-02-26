class Yelp
  attr_reader :response

  def initialize(zip)
    @zip = zip
    @response = JSON.parse(File.read("#{Rails.root}/test/yelp.json"))
    # @response = HTTParty.get("http://api.yelp.com/v2/#{ENV["YELP_KEY"]}/yelp/q/#{zip}.json"))
  end

  # def results(array)
  #   @response["businesses"].map {|r| YelpResult.new(r)}
  # end

  def restaurant_names
    @response["businesses"][0]["name"]
  end

  def cuisine
    @response["businesses"][0]["categories"][0][0]
  end

  def postal_code
    @response["businesses"][0]["location"]["postal_code"]
  end

  def phone
    @response["businesses"][0]["phone"]
  end

  def rating
    @response["businesses"][0]["rating"]
  end
end
#
# class YelpResult
#   attr_reader :name, :genre, :zip, :phone
#   def initialize(name, genre, zip, phone)
#     @name = name
#     @genre = genre
#     @zip = zip
#     @phone = phone
#   end
