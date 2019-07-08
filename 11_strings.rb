
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
words = <<ANY_NAME
This is my name #{name}
and my last name #{last_name}
ANY_NAME

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

p '--------Compare strings----------'
a = 'Hello'
b = 'hello'
p a == b
p a < b
p 'A' < 'a'
p 'Z' < 'a'

p '--------Contatination strings----------'
first = 'String 1 '
second = 'String 2 '
three = 'String 3 '

p 'String1 ' + 'String 2'
p first += second

# * concat will overwrite the original string
first.concat(three)
p first
# * prepend alike concat but added string to the beginning
first.prepend(second)
p first

# * << - is a shovel operator work like push
p first << second << 'extra'

p '--------Length and size----------'
a = 'Hello world'

# * size and length no difference
p a.length
p a.size

p a.length.odd?

p '--------Extract and overwrite character----------'
story = 'Some story happend'
p story.length
p story[7]
# * equal to story[7]
p story.slice(7)

p story[-1]

# * Extract from 1  3 characters
p story[1, 3]
p story.slice(1, 3)

# * Extract from to
p story[2..5]

# * Extract from to, but not include last character
p story[2...5]

# * Extract from to, to count from end
p story[2..-5]

# * Overwrite characters
story[2] = 'M'
p story
story[2, 2] = 'LOL'
p story

p '--------Change case----------'
# * Case methods
puts 'hello'.capitalize
puts 'hello'.upcase
puts 'Hello'.downcase

# * Revers methods
puts 'Ruby'.reverse

p '--------Bang methods----------'
word = 'hello'

# * not change the origin string
p word.capitalize
p word

# * change origin string
word = word.capitalize
# * Or you can do like this (! - bang)
word.capitalize!
word.upcase!

p word

p '--------Include method (case sensitive)----------'
name = 'Some name'
p name.downcase.include?('ame')

p '--------Check for empty----------'
p ''.empty?

# * false
p ''.nil?

last_name = name[100, 4]
# * true
p last_name.nil?
