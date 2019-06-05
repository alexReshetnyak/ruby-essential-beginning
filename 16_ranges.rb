numbers = 1..5
p numbers
p numbers.class

# * exclude final value from range
numbers2 = 1...5
p numbers2.first
p numbers2.last

# * return an array of first 4 numbers from range
p numbers2.first(4)

p '----alphabet range ------'
letters_range = 'A'..'z'
p letters_range.first(40)

p '--------size method---------'
p letters_range.size
p numbers.size

p '--------include? method---------'
p letters_range.include?('b')
p letters_range === 'c'
