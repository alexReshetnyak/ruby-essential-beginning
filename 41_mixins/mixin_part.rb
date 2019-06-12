module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

module Announcer
  def who_i_am
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer # * add methods from Announcer module to class (static methods)
end

class Cat
  extend Announcer # * add methods from Announcer module to class (static methods)
end


class Bookstore
  prepend Purchaseable # * First search method in this module than in class

  def purchase(item)
    "You bought a copy of #{item}"
  end
end

class Supermarket
  include Purchaseable # * include Purchaseable module
end

class CornerMart < Supermarket # * extend from superclass
end


p '-----------------'
barnes_store = Bookstore.new
p barnes_store.purchase('Atlas Shrugged')


p '-----------------'
shoprite = Supermarket.new
p shoprite.purchase('Ice cream')


p '-----------------'
quickstop = CornerMart.new
p quickstop.purchase('Slim Jim')


p '--------ancestors---------'
p Bookstore.ancestors # * => [Bookstore, Purchaseable, Object, Kernel, BasicObject]

p '--------prepend key word---------'
bn = Bookstore.new
p bn.purchase('1987')


p '--------extend key word----------'
p Dog.who_i_am
