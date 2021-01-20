class Vehicle
  def initialize(year)
    @year = year
  end
  
  def year
    @year
  end

  def printStats
    puts "Year: #{@year}"
  end
end

module OldTimerCheck
  def isOldTimer?
    return ((Time.new.year - @year) > 30)
  end
end

class Car < Vehicle
  include OldTimerCheck

  def initialize(brand, model, year)
    @brand = brand 
    @model = model

    super(year)
  end

  def printStats
    puts "Brand: #{@brand}"
    puts "Model: #{@model}"
  
    super
  end
end

vehicle = Vehicle.new(2015)
vehicle.printStats
puts()

car = Car.new("A", "B", 2015)
car.printStats
puts(car.isOldTimer?)
puts()

car2 = Car.new("B", "M", 1990)
car2.printStats
puts(car2.isOldTimer?)
