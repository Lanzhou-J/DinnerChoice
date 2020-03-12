# require_relative "../utils/menu_list"
require_relative "../utils/line_separator"
require_relative "../utils/error"
require_relative "../../DinnerChoice/controllers/DinnerChoiceController"

def menu_select(restaurant_controller)
  # restaurant_controller.menu_list
  user_selection = restaurant_controller.menu_list
 

  while user_selection != '6' && user_selection != '6.'&& user_selection != 'exit'
    if user_selection == '1' || user_selection == '1.'
      puts 'Create a new restaurant entry:'.colorize(:green)
      restaurant_controller.new
    elsif user_selection == '2' || user_selection == '2.'
      puts 'Display or search restaurants by key words:'.colorize(:green)
      restaurant_controller.index
    elsif user_selection == '3' || user_selection == '3.'
      puts 'Delete an existing entry:'.colorize(:green)
      restaurant_controller.remove
    elsif user_selection == '4' || user_selection == '4.'
      puts 'Update info of an existing entry:'.colorize(:green)
      restaurant_controller.rewrite
    elsif user_selection == '5' || user_selection == '5.'
      puts 'Make a choice! (random generator):'.colorize(:green)
      restaurant_controller.dice
    else
      error_message()
      puts "Please select from 1 to 6, or input 'exit'."
    end 
    line_separator()
    user_selection = restaurant_controller.menu_list
  end
  puts 'See you next time!'
  exit
end