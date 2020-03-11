require_relative "../models/Restaurants"

class RestaurantRepository
  attr_reader :database
  def initialize 
    @database = []
  end

  def add(restaurant)
    @database << restaurant
  end 

  def delete(delete_input)
    @database.delete_at(delete_input)
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