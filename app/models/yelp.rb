class Yelp

  attr_reader :response

  def initialize(zip)
    @zip = zip
    @response = Yelp.client.search(params[:term], params[:location])
  end

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
