class YelpsController < ApplicationController
  def index
    y = Yelp.new(27616)
    render json: y.response
  end

  def show
    y = Yelp.new(JSON.parse(File.read("#{Rails.root}/test/yelp.json")))
    render json: {restaurant:
                    {restaurant_names: y.restaurant_names,
                    rating: y.rating,
                    postal_code: y.postal_code,
                    phone: y.phone,
                    categories: y.cuisine}
    }
  end
end
