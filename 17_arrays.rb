p [].class

numbers = [1, 2, 3, 4, 5, 6]
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

# * get value using fetch
p fruits.fetch(2)

# * cause an error
# p fruits.fetch(20)

# * if nil return value
p fruits.fetch(20, 'value doesnt exist')


p '------like slice get part of array------'
# * from number to get
p numbers[2, 4]
# * get piece of array from 1 to 4 indexes
p numbers[1..4]
p numbers[1...4]


p '------Overwrite value---------'
fruits[2] = 'watermelon'
p fruits
fruits[20] = 'watermelon'
p fruits

fruits[10, 11] = ['value 11', 'value 12']
p fruits

fruits[8..9] = ['value 9', 'value 10']
p fruits

# * will remove one value from list
fruits[8..9] = ['value 9']
p fruits


p '----Spaceship operator----'
# * return 0 if values equal
p 5 <=> 5
# * return 1  if left greater than right
p 5 <=> 3
# * return -1 if left less than right
p 3 <=> 4
# * return nil if different types
p 3 <=> []

# * return -1
p [1, 2, 3] <=> [1, 2, 4]
# * return 1
p [2, 2, 3] <=> [1, 99, 99]


