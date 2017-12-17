class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
    @category = params[:food_type]
    @restaurants = Restaurant.select { |id, restaurant| restaurant[:category] == @category }
  end
end





