require_relative "DinnerChoice/version"

require_relative "../lib/DinnerChoice/utils/heading_ascii"
require_relative "../lib/DinnerChoice/utils/wine_logo_ascii"
require_relative "../lib/DinnerChoice/utils/line_separator"

require_relative "../lib/DinnerChoice/utils/menu_list"
require_relative "../lib/DinnerChoice/utils/menu_select"
heading_ascii()
sleep 0.3
puts "What restaurants do you recommend for lunch/dinner?".colorize(:light_green)
sleep 0.3
puts "Please select!".colorize(:light_blue)
sleep 0.3
wine_logo()
sleep 0.3
line_separator()
puts
menu_list()
puts
line_separator()
menu_select()


# module DinnerChoice
#   class Error < StandardError; end
#   # Your code goes here...
# end
