class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    # only select restaurants that match the argument passed in the query string via params
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |id, rest|
        params[:food_type] == rest[:category]
      end
    end
  end

  def create
    # TO DO: Tomorrow
  end

end
