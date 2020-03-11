require_relative '../utils/capitalize'
require_relative '../models/Restaurants'

class Controller
  def initialize(restaurant_views, restaurant_repo) 
    @restaurant_views = restaurant_views
    @restaurant_repo = restaurant_repo
  end 

  def index 
    @restaurant_views.index(@restaurant_repo.database)
  end 

  def new 
    results = @restaurant_views.new
    create(results)
  end 

  def create(results) 
    name, address, rating, average_price = capitalize(results)
    id = Restaurant.get_id(@restaurant_repo)
    @restaurant_repo.add(Restaurant.new(id, name, address, rating, average_price))
  end 

  def menu_list
    @restaurant_views.menu_list
  end
end