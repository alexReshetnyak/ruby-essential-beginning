p '-----include? method------'
numbers = [1, 2, 3, 4, 5, 6]

p numbers.include?(3)

p '-----index find_index-------'
p numbers.index(2)
p numbers.find_index(100) # * work the same

p '-----select method-------'
# * return array (like filter)
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
