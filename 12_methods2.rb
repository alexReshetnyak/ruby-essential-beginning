
# * cause an error
# introduce_myselfs

# * method defenition (function in ruby)
def introduce_myself
	puts 'My name is'
	puts 'Alex'
end

introduce_myself


p '--------Local variables----------'
outside_variable = 'new string'
input_2 = 'string 2'

def introduce_myself2(data, data2)
	name = 'Alex 2'
	puts "My name is #{name} " + data + ' ' + data2

	# * explicit return
	return 'some result'

	# * never get there
	# * Automatically return the last string (implicit return)
	'some result2'
end

result = introduce_myself2(outside_variable, input_2)

p result
# introduce_myself2 'also work'


p '--------methods returns-----------'
def name_nil
	# p 'data' will return 'data'
	puts 'data'
end

p name_nil

def implicitReturn
	'some data to return'
end

p implicitReturn

p '------Default or option param -------'
def make_phone_call(number, area_code, code = 1)
  p "Calling #{code} #{area_code} #{number}"
end

make_phone_call(7777, 22)

p '-----splat arguments------'
# * splat work like ... in JS
def sum(*numbers)
	sum = 0

	numbers.each { |num| sum += num }

  sum
end

p sum(1, 2, 3, 4)

p '------respond_to method-------'
num = 1000

# * Check if object has method
p num.respond_to?('next')

# * safe way to call something
if num.respond_to?('length')
  p num.length
end

# * :next is a symbol and equal to 'next' but with out embedded methods that's why it very light
p 'hello'.respond_to?(:next)
p 'hello'.respond_to?(:length)
p 'hello'.respond_to?(:odd?)
