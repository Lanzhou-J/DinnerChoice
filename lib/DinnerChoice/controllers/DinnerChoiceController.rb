require_relative '../utils/capitalize'
require_relative '../models/Restaurants'
require_relative '../utils/waiting_dot'
require_relative '../utils/dice_roller'

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
    count = @restaurant_repo.add(Restaurant.new(id, name, address, rating, average_price))
    waiting()
    puts
    if count == 1
      puts "New restaurant is successfully added!".colorize(:green)
    end
  end 

  def new 
    results = @restaurant_views.new
    create(results)
  end 

  def delete_index(delete_index)
    count = @restaurant_repo.delete(delete_index)
    waiting()
    puts
    if count == -1
      puts "The restaurant is successfully deleted!".colorize(:green)
    end
  end

  def remove
    remove_index = @restaurant_views.delete_command
    delete_index(remove_index)
  end

  def update_info(update_index, select_item, update_content)
    @restaurant_repo.update(update_index, select_item, update_content)
    waiting()
    puts
    puts "The restaurant is successfully edited!".colorize(:green)
  end

  def rewrite
    update_array = @restaurant_views.update_command
    update_info(update_array[0], update_array[1], update_array[2])
  end
  
  def menu_list
    @restaurant_views.menu_list
  end

  def dice
    puts
    waiting()
    sleep 0.5
    print "    ......".colorize(:green)
    sleep 0.5
    print "Dice rolling".colorize(:green)
    sleep 0.5
    puts "......".colorize(:green)
    sleep 0.5
    waiting()
    selected_restaurant = roll_dice(@restaurant_repo.database)
    @restaurant_views.index(selected_restaurant)
  end
end