# * Static methods and variables

class Bicycle
  @@maker = 'BikeTech' # * class variable
  @@count = 0

  def self.description # * static method
    "Hi there! Use me to create a bicycle object"
  end

  class << self # * another way to create static method
    def say_go
      'Go go go'
    end
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

p Bicycle.description # * => "Hi there! Use me to create a bicycle object"
p Bicycle.say_go # * => Go go go
p Bicycle.count # * => 0
bike = Bicycle.new
p bike.maker # * => "BikeTech"

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count # * => 4
