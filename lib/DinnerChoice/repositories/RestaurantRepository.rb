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

end 