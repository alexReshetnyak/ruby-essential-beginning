# * hash defenition
empty_hash = {}
p empty_hash
p empty_hash.class


p '-----Create hash and extract value----'
# * all keys have to be uniq, key and value can be any type of data
names_hash = {
  'name' => 'Alexey',
  'age' => 31,
  'sex' => 'male'
}
p names_hash
p names_hash['age']
p names_hash['extra']

p '-----symbol as key----'
# * symbol it like string but lighter
p :name
p :name.class
p :naem.methods.length
p 'name'.methods.length

person = {
  :name => 'Alex',
  :age => 31,
  :languages => ['Ruby', 'JavaScript', 'TypeScript']
}

# * a short way to write hash with symbols keys
person2 = {
  name: 'Alex',
  age: 31,
  languages: ['Ruby', 'JavaScript', 'TypeScript']
}

p person[:languages]
p person2[:languages]


p '-----convert symbols to strings----'
p :age.to_s.class
p 'age'.to_sym.class

p '------add key value pair to hash------'
menu = {
  burger: 3.99,
  taco: 5.44,
  chips: 8.33
}

menu[:sandwich] = 9.11
p menu

# * add, key value
menu.store(:sushi, 5.67)

p '-----retrive keys------'
shopping_list = {
  bananas: 3,
  oranges: 10,
  carrots: 3
}
# *  will return array with values
p shopping_list.values # * => [3, 10, 3]

p '---create hash with default value---'
# * create new empty hash
fruit_prices = Hash.new(0) # * 0 - default value if value not exist
p fruit_prices[:bananas]

fruit_prices.default = 'New default value'
p fruit_prices[:bananas]

p '---convert hash to array---'
p shopping_list.to_a
p shopping_list.to_a.flatten
p shopping_list.to_a.to_h # * convert to array and than to hash

p '---hash as method argument---'
def calculate_total(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

p calculate_total(22, 0.18, 0.07)

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tip_amount + tax_amount
end

p calculate_total_2({ price: 22, tip: 0.18, tax: 0.07 })
p calculate_total_2( price: 22, tip: 0.18, tax: 0.07 ) # * if hash is a last argument you can exclude braces
