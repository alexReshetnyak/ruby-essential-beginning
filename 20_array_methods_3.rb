p '------sort method-------'
numbers = [5, 13, 1, -2, 8]
words = %w[caterpillar kangaroo apple Zebra]

p numbers.sort
p words.sort

p numbers.sort.reverse
p words.sort.reverse


p '------concat method-------'
p [1,2,3] + [4, 5, 6]
p [1,2,3].concat([4, 5, 6])


p '------max and min methods------'
stock_prices = [2.3, 3.2, 5.6, 1.6]
p stock_prices.max
p stock_prices.min


p '-----include? method------'
numbers = [1, 2, 3, 4, 5, 6]
p numbers.include?(3) # * => true


p '-----index find_index-------'
p numbers.index(2)
p numbers.find_index(100) # * work the same


p '-----select method-------'
# * return array (like JS filter)
filtered_numbers = numbers.select do |item|
  item >= 3
end

p filtered_numbers


p '-----reject method-------'
# * oposite of select
result = numbers.reject { |number| number >= 3 }
p result


p '-----unpack multidimensional array-------'
users = [['Bob', 25, 'male'], ['Susan', 21, 'female']]
p users[1][2]

bob, susan = users
p bob
p susan


p '-----partition method-------'
foods = ['Steak', 'vegetables', 'burger', 'kale']
# * combine select and reject and return two arrays
good, bad = foods.partition { |food| food.include?('Steak') }

p good
p bad


p '-----split method-------'
sentense = 'Hi my name is Alex and everything is good'
# * create array from string
p sentense.split
p sentense.split('a')


p '-----join method-------'
names = ['joe', 'moe', 'bob']
p names.join(' - ')


p '-----any? method-------'
# * worked like js every() returns true if atleast one true
p [1, 2, 3, 4].any? do |number|
  number > 3
end


p '-----all? method-------'
# * worked like js every() returns true if all true
result = [1, 2, 3, 4].all? do |n|
  n > 1
end
p result
