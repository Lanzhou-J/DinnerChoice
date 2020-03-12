class Restaurant
  attr_accessor  :name, :address, :rating, :average_price
  def initialize( name, address, rating, average_price)
    @name = name
    @address = address
    @rating = rating
    @average_price = average_price
  end 
end