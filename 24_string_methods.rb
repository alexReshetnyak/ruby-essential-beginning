p '----iterate----'
'Hello'.each_char { |char| p char }

p 'Hello'.split('')  # * make array from string
p 'Hello'.chars # * make array from string

p '---count method----'
string = 'some dumb string'
p string.count('m')

p '---index----'
p string.index('dum')

p '---insert method----'
# * Insert string
string.insert(3, 'W')
p string

p '-----squeeze-----'
sentence = 'Soooome interesting            information'

# * replace oooo to single 0
p sentence.squeeze
# * remove extra spaces
p sentence.squeeze(' ')

p '-----clear method-----'
# * make empty string
sentence.clear
p sentence

p '-----delete method-----'
string = 'hello'
# * return string without e
p string.delete('e')
