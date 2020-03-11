class Restaurant
  attr_accessor :id, :name, :address, :rating, :average_price
  def initialize(id, name, address, rating, average_price)
    @id = id
    @name = name
    @address = address
    @rating = rating
    @average_price = average_price
  end 

  def self.get_id(restaurants_repo)
    restaurants_repo.database.length + 1
  end 
end