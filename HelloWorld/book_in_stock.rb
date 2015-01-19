class BookInStock

  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn,price)
    @isbn = isbn
    @price = price
  end

  # def isbn
  #   @isbn
  # end

end


