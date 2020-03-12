require_relative '../utils/capitalize'
require_relative '../models/Restaurants'
require_relative '../utils/waiting_dot'
require_relative '../utils/dice_roller'
require_relative '../utils/error'

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
    count = @restaurant_repo.add(Restaurant.new(name, address, rating, average_price))
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
    if @restaurant_repo.database == []
      puts 
      puts "List is empty, nothing to delete.".colorize(:red)
    else
      remove_index = @restaurant_views.delete_command
      if (remove_index < 0) || (remove_index > (@restaurant_repo.database.count - 1))
        error_message()
        puts "Please select ID from the existing restaurants list."
      else
        delete_index(remove_index)
      end
    end
  end

  def update_info(update_index, select_item, update_content)
    @restaurant_repo.update(update_index, select_item, update_content)
    waiting()
    puts
    puts "The restaurant is successfully edited!".colorize(:green)
  end

  def rewrite
    if @restaurant_repo.database == []
      puts 
      puts "List is empty, nothing to update.".colorize(:red)
      puts "Select 1 if you want to add a new entry."
    else
      update_index = @restaurant_views.update_index
      
      if (update_index < 0) || (update_index > (@restaurant_repo.database.count - 1))
        error_message()
        puts "Please select ID from the existing restaurants list."
      else
        update_array = @restaurant_views.update_command
        update_info(update_index, update_array[0], update_array[1])
      end
    end
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