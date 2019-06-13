
class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end


class Thingamajiq < Product
  @@thingamajiq_counter = 0

  def self.counter
    @@thingamajiq_counter
  end

  def initialize
    super
    @@thingamajiq_counter += 1
  end
end

p '----------------'
a = Widget.new
b = Widget.new

p Widget.counter
p Product.counter

puts

c = Thingamajiq.new
d = Thingamajiq.new
e = Thingamajiq.new


p Thingamajiq.counter
p Product.counter
