require_relative 'circle.rb' # * import remote modules
require './39_modules/rectangle' # * import remote modules

module Square
  def self.area(side)
    side * side
  end
end

p Square.area(10)
p Rectangle.area(10, 5)
p Circle.area(3)
