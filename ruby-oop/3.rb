class Product
  def initialize(name, brand, type, price, stock)
    @name = name
    @brand = brand
    @type = type
    @price = price
    @stock = stock
  end

  attr_accessor :name, :brand, :type, :price, :stock

  def to_s
    puts "#{@name} | #{@brand} | #{@type} | #{@price} | #{@stock}"
  end
end

product = Product.new("Mie", "Indomie", "Goreng", "Rp 2.500", 50)

puts product.to_s
