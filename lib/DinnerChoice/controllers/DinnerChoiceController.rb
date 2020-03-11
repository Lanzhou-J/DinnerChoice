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

  def create(results) 
    name, address, rating, average_price = capitalize(results)
    id = Restaurant.get_id(@restaurant_repo)
    @restaurant_repo.add(Restaurant.new(id, name, address, rating, average_price))
  end 

  def new 
    results = @restaurant_views.new
    create(results)
  end 

  def delete_index(delete_index)
    @restaurant_repo.delete(delete_index)
  end

  def remove
    remove_index = @restaurant_views.delete_command
    delete_index(remove_index)
  end

  def update_info(update_index, select_item, update_content)
    @restaurant_repo.update(update_index, select_item, update_content)
  end

  def rewrite
    update_array = @restaurant_views.update_command
    update_info(update_array[0], update_array[1], update_array[2])
  end
  
  def menu_list
    @restaurant_views.menu_list
  end
end