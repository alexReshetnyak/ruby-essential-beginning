
p "Hi I'm a new string"

name = 'Alex'
last_name = 'Resh'

puts name, last_name

p '-------Create string-----------'
empty = ''
p empty.length

p '-------Create string-----------'
name = String.new('Alex2')
p name

p '-------Create string-----------'
p 5.to_s

p '--------Multiline string----------'
words = <<MLS
This is my name #{name}
and my last name #{last_name}
MLS

print words

p '--------Escape characters----------'
puts "Name 'Some name'"
puts "Name \"Some name\""
puts "Name \n next line"
puts "\t Insert a tab here"

p '--------Difference between single and double quotes----------'
puts "Name \n next line"
puts 'Name \n next line'

phrase = 'Hello'
puts "hi is #{phrase}"
puts 'hi is #{phrase}'
