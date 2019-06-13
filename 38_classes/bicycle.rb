# * Static methods and variables

class Bicycle
  @@maker = 'BikeTech' # * class variable
  @@count = 0

  def self.description # * static method
    "Hi there! Use me to create a bicycle object"
  end

  def self.count # * static getter
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

p Bicycle.description
p Bicycle.count
bike = Bicycle.new
p bike.maker

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count # * => 4
