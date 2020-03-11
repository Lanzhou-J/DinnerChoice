require_relative "../utils/line_separator"

class RestaurantViews 
  def index(restaurant_database) 
    puts ('-' * 25).colorize(:light_blue)
    restaurant_database.each do |restaurant|
      puts "ID: #{restaurant.id}"
      puts "Name: #{restaurant.name}"
      puts "Address: #{restaurant.address}"
      puts "Rating: #{restaurant.rating}"
      puts "Average Price: #{restaurant.average_price}"
      puts ('-' * 25).colorize(:light_blue)
      sleep 0.1
    end 
  end 

  def new 
    puts 
    puts "What's the name of the restaurant you'd like to add?"
    print "> "
    name = gets.chomp
    puts "What's the address of the restaurant you'd like to add?"
    print "> "
    address = gets.chomp
    puts "How do you like this restaurant? please rate on a scale of 1-5, 1 being the lowest(poor), 5 being the highest(great)."
    print '> '
    rating = gets.chomp
    puts "How much do you usually spend in this restaurant?"
    print '> '
    average_price = gets.chomp
    puts
    [name, address, rating, average_price]
  end

  def menu_list()
    puts 'main menu'.upcase.colorize(:light_yellow)
    puts '1. Create a new restaurant entry'
    puts '2. Display or search restaurants by key words'
    puts '3. Make a choice! (random generator)'
    puts '4. Exit (or input "exit")'
    puts
    print 'Please select from the ' 
    print 'MAIN MENU '.colorize(:light_yellow)
    puts '(select numbers 1 to 4):'
    print '> '
    user_selection = gets.strip.downcase
  end
end 