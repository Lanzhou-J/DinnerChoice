require_relative "../utils/line_separator"

class RestaurantViews 
  def index(restaurant_database) 
    puts ('-' * 25).colorize(:light_blue)
    restaurant_database.each_with_index do |restaurant, index|
      puts "ID: #{index + 1}"
      puts "Name: #{restaurant.name}"
      puts "Address: #{restaurant.address}"
      puts "Rating: #{restaurant.rating}"
      puts "Average Price: $#{restaurant.average_price}"
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

  def delete_command
    puts 
    puts "Which restaurant do you want to delete from the list? Please input the ID number:"
    print "> "
    delete_id = gets.chomp.to_i
    delete_index = delete_id - 1
    return delete_index
  end

  def update_command
    puts 
    puts "Which restaurant do you want to edit? Please input the ID number:"
    print "> "
    update_id = gets.chomp.to_i
    update_index = update_id - 1
    puts "Which feature do you want to edit? Please select from name/address/rating/price:"
    print "> "
    select_item = gets.chomp.downcase
    puts "Please input new content:"
    print "> "
    update_content = gets.chomp
    [update_index, select_item, update_content]
  end

  def menu_list()
    puts 'main menu'.upcase.colorize(:light_yellow)
    puts '1. Create a new restaurant entry'
    puts '2. Display or search restaurants by key words'
    puts '3. Delete an existing entry'
    puts '4. Update info of an existing entry'
    puts '5. Make a choice! (random generator)'
    puts '6. Exit (or input "exit")'
    puts
    print 'Please select from the ' 
    print 'MAIN MENU '.colorize(:light_yellow)
    puts '(select numbers 1 to 6):'
    print '> '
    user_selection = gets.strip.downcase
  end
end 