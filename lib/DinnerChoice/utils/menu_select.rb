# require_relative "../utils/menu_list"
require_relative "../utils/line_separator"
require_relative "../../DinnerChoice/controllers/DinnerChoiceController"

def menu_select(restaurant_controller)
  # restaurant_controller.menu_list
  user_selection = restaurant_controller.menu_list
 

  while user_selection != '6' && user_selection != '6.'&& user_selection != 'exit'
  # print '> '
  # user_selection = gets.strip.downcase
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
      # restaurant_controller.update
    elsif user_selection == '5' || user_selection == '5.'
      puts 'Make a choice! (random generator):'.colorize(:green)
      restaurant_controller.dice
    else
      puts 'Sorry, I don\'t understand. Please select from 1 to 5.'
    end 
    line_separator()
    user_selection = restaurant_controller.menu_list
  end
  puts 'See you next time!'
  exit
end