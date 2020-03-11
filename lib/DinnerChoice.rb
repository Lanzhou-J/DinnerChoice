require_relative "DinnerChoice/version"

require_relative "../lib/DinnerChoice/utils/heading_ascii"
require_relative "../lib/DinnerChoice/utils/wine_logo_ascii"
require_relative "../lib/DinnerChoice/utils/line_separator"
require_relative '../lib/DinnerChoice/utils/capitalize'

require_relative "../lib/DinnerChoice/utils/menu_select"

require_relative "../lib/DinnerChoice/controllers/DinnerChoiceController"
require_relative '../lib/DinnerChoice/models/Restaurants'
require_relative '../lib/DinnerChoice/views/RestaurantView'
require_relative '../lib/DinnerChoice/repositories/RestaurantRepository'
heading_ascii()
sleep 0.3
puts "What restaurants do you recommend for lunch/dinner?".colorize(:light_green)
sleep 0.3
puts "Please select!".colorize(:light_blue)
sleep 0.3
wine_logo()
sleep 0.3

restaurant_view = RestaurantViews.new
restaurant_repository = RestaurantRepository.new
restaurant_controller = Controller.new(restaurant_view, restaurant_repository)


  puts
  line_separator()
  menu_select(restaurant_controller)