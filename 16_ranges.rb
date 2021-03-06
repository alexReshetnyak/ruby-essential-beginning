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
# * get first 40 items
p letters_range.first(40)

p '--------size method---------'
p letters_range.size
p numbers.size

p '--------include? method---------'
p letters_range.include?('b')
p letters_range === 'c'
p (1..10) === 3.14159	#* »	true

p '----------To array--------------'
p (1..6).to_a

p '----------Array methods for ranges--------------'
digits = 0..9
digits.include?(5)	#* »	true
digits.min	#* »	0
digits.max	#* »	9
digits.reject {|i| i < 5 }	#* »	[5, 6, 7, 8, 9]
digits.each do |digit|
  print(digit, ' ')
end