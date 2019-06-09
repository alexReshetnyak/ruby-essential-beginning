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

p person[:languages]

p '-----convert symbols to strings----'
p :age.to_s.class
p 'age'.to_sym.class
