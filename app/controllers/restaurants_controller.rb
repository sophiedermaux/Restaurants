class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    if params[:food_type].nil? || params[:food_type].blank?
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.select { |restaurant| restaurant.category.capitalize == params[:food_type].capitalize}
    end
  end
end





