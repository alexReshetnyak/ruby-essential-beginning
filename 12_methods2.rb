
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
def nameNil
	# p 'data' will return 'data'
	puts 'data'
end

p nameNil

def implicitReturn
	'some data to return'
end

p implicitReturn
