
class Product
  @@product_counter = 0
  
  def initialize
    @some_val = '1234'
  end

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter # * static method
    @@widget_counter
  end

  def val_get
    @some_val
  end

  def initialize
    super
    @@widget_counter += 1
    @some_val = '222'
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
p a.val_get

puts

c = Thingamajiq.new
d = Thingamajiq.new
e = Thingamajiq.new


p Thingamajiq.counter
p Product.counter