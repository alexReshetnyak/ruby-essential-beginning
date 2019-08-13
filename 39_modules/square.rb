require_relative 'circle.rb' # * import remote modules
require './39_modules/rectangle' # * import remote modules

module Square
  def self.area(side)
    side * side
  end
end

puts '----SQUARE--------'
p Square.area(10)
p Rectangle.area(10, 5)
p Circle.area(3)

p Parent::Child::Child2.getSome
puts '----SQUARE-END----'