# require_relative "../utils/menu_list"
require_relative "../utils/line_separator"
require_relative "../../DinnerChoice/controllers/DinnerChoiceController"

def menu_select(restaurant_controller)
  # restaurant_controller.menu_list
  user_selection = restaurant_controller.menu_list
 

  while user_selection != '4' && user_selection != '4.'&& user_selection != 'exit'
  # print '> '
  # user_selection = gets.strip.downcase
    if user_selection == '1' || user_selection == '1.'
      puts 'Create a new restaurant entry:'.colorize(:green)
      restaurant_controller.new
    elsif user_selection == '2' || user_selection == '2.'
      puts puts 'Display or search restaurants by key words:'.colorize(:green)
      restaurant_controller.index
    elsif user_selection == '3' || user_selection == '3.'
      puts 'random'
    else
      puts 'Sorry, I don\'t understand. Please select from 1 to 4.'
    end 
    line_separator()
    user_selection = restaurant_controller.menu_list
  end
  puts 'See you next time!'
  exit
end