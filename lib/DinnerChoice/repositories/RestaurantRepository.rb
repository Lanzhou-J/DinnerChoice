class RestaurantRepository
  attr_reader :database
  def initialize 
    @database = []
  end

  def add(restaurant)
    @database << restaurant
  end 
end 