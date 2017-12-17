class RestaurantsController < ApplicationController
   RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
    3 => { name: "Andina", address: "Shoreditch, London", category: "peruvian" },
    4 => { name: "Franco Manca", address: "Clapham Junction, London", category: "italian" },
    5 => { name: "Mama Lan", address: "Brixton, London", category: "chinese" },
    6 => { name: "Dumplings Legend", address: "China Town, London", category: "chinese" },
    7 => { name: "Som Saa ", address: "Shoreditch, London", category: "thai" },
  }

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == @category }
    end
  end

  def create

  end

end

