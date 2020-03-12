require_relative "../models/Restaurants"

class RestaurantRepository
  attr_reader :database
  def initialize 
    pappaRich = Restaurant.new('Pappa Rich', 'Southern cross station, L1-CS-03', '3.5', '9')
    hungryJacks = Restaurant.new('Hungry Jack\'s', 'Spencer Street', '2.5', '9.5')
    grilld = Restaurant.new('Grill\'d', 'Southern cross station', '4', '17')
    @database = [pappaRich, hungryJacks, grilld]
  end

  def add(restaurant)
    length_brfore = @database.length
    @database << restaurant
    length_after = @database.length
    count = length_after - length_brfore
    return count
  end 

  def delete(delete_input)
    length_brfore = @database.length
    @database.delete_at(delete_input)
    length_after = @database.length
    count = length_after - length_brfore
    return count
  end

  def update(update_input, select_item, update_content)
    update_restaurant = @database[update_input]
    case select_item
    when 'name'
      update_restaurant.name = update_content
    when 'address'
      update_restaurant.address = update_content
    when 'rating'
      update_restaurant.rating = update_content
    when 'price','average price'
      update_restaurant.average_price = update_content
    end
  end

end 