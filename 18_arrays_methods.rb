channels = ['cbs', 'fox', 'nbc', 'espn', 'upn']
numbers = [1, 2, 3, 4, 5, 6, 7, 8, nil]

# * Get value at position return always array
p channels.values_at(0)
# * 0 and 2 - indexes
p channels.values_at(0, 2)


p '-----slice method-----'
p channels.slice(2)
p channels.slice(2, 1)


p '------length and size--------'
p channels.length
p channels.size # * a litle bit faster

# * count how many 2 in this array
p numbers.count(2)


p '------empty? nil?--------'
# * alike numbers.length == 0
p numbers.empty?
# * return true only if array == nil
p numbers.nil?

letters = ('a'..'z').to_a
p letters
p letters[50].nil?

p '------first last--------'
p numbers.first
p numbers.last
p numbers.first(2)
p numbers.last(3)

def custom_first(arr, num = 0)
  return arr[0] if num.zero?

  arr[0, num]
end

p custom_first(numbers, 5)


p '------push shovel insert--------'
numbers.push(100)
p numbers

# * << - is a shovel operator work like push
numbers << 101
p numbers

# * insert value start from index , value, value ....
numbers.insert(1, 1001, 1002)
p numbers


p '------pop--------'
# * remove one element from the ebd
numbers.pop
p numbers

# * remove 2 last elements
numbers.pop(2)
p numbers


p '----shift unshift----'
# * remove item from start
numbers.shift
p numbers

numbers.unshift('1')
p numbers


p '----Equality----'
a = [1, 2, 3]
b = [1, 2, 3]
c = [1, 2, 3, 4]
d = [1, 2, 5]

p a == b # * return true
p a == c # * return false


p '------Convert range to array (.to_a)------'
letters = 'a'..'z'
p letters
letters = letters.to_a
# * get part of array from 3 to 10
p letters[3..10]


p '----Check if array-----'
p [1, 2, 3].class == Array
p [1,2,3].is_a?(Array)
p [1,2,3].is_a?(Object)

