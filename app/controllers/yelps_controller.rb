
class YelpsController < ApplicationController
  # Yelp.client.configure do |config|
  #   config.consumer_key = ENV["YELP_CONSUMER_KEY"]
  #   config.consumer_secret = ENV["YELP_CONSUMER_SECRET"]
  #   config.token = ENV["YELP_TOKEN"]
  #   config.token_secret = ENV["YELP_TOKEN_SECRET"]
  # end

  def index
    # render json: Yelp.client.search(params[:term], params[:location])
  parameters = { term: params[:term], limit: 3 }
  render json: Yelp.client.search(params[:postal_code], parameters)
  end

  def show
  end
end
