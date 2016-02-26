require 'minitest/autorun'
require 'minitest/pride'
require 'yelp.rb'
require "#{Rails.root}/app/models/yelp.rb"
require 'test_helper'

class Yelp
  def initialize(zip)
    @zipcode = zip
    @response = JSON.parse(File.read("#{Rails.root}/test/yelp.json"))
  end
end


class YelpTest < MiniTest::Test

  test "should find restaurant name" do
    y = Yelp.new(27616)
    assert_equal "Garland", y.restaurant_name[0]
    assert_equal "4.5" y.rating[0]
  end


end
