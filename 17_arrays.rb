p [].class

numbers = [1, 2, 3, 4]
p numbers

students = [
  ['Boris', 25, true],
  ['Sally', 23, true]
]

p students

p '----Shorthand way to create array with strings -----'
names = %w[Jack Jill James]
p names

p '------Different method to create new array-------'
p Array.new
# * array with 10 nil
p Array.new(10)
p Array.new(10, 'value')
p Array.new(10, [1, 2, 3])

p '-------Access to single element---------'
fruits = ['apple', 'orange', 'grape']
p fruits.length
p fruits[2]
p fruits[50] # * return nil
p fruits[-1] # * get from the end
