words = ['word1', 'wqwe', 'newword', 'else', 'else']

p '--------find, detect---------'
# * find first result
p words.find { |word| word.length > 3 }
# * worked like find
p words.detect{ |word| word.length > 3 }

p '--------uniq method---------'
# * made all values uniq
p words.uniq

p '--------compact method---------'
p [1,2,3].compact
# * remove all nil from array
p [1, nil, 2, 3, nil].compact

p '--------inject, reduce method---------'
# * worked like reduce in JS
p [10, 20, 30, 40].inject { |sum, n|  sum + n }

# * worked like inject
# * 10 - start value
result = [10, 20, 30, 40].reduce(10) do |sum, current|
  sum + current
end

p result

p '--------flatten method---------'
registration = [
  ['Bob', 'Dan', 'Jack'],
  ['Rick', 'Susan', 'Molly'],
  ['Pierce', 'Sean', 'Gearge']
]

# * worked like flat in JS and return single array
p registration.flatten

p '--------zip method---------'
names = ['Bob', 'Moe']
registration = [true, false]
# * worked oposite of flatten, combines array and return array with nested arrays
p names.zip(registration) # * => [["Bob", true], ["Moe", false]]

p names.zip(registration, [1, 2]) # * => [["Bob", true, 1], ["Moe", false, 2]]

p '--------sample method---------'
# * return random value
p words.sample

# * return array with 2 uniq random values
p words.sample(2)

p '--------asterisk symbol (*) with arrays---------'
# * repeat array 5 times
p [1, 2, 3] * 5 # * => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]

p '--------union arrays---------'
# * worked like concat (or +) but removes duplicates
p [1, 2, 3] | [3, 4, 5] # * => [1, 2, 3, 4, 5]

p '--------remove array items that exist in another array---------'
p [1, 1, 2, 2, 3, 3, 4, 4, 5, 5] - [2, 4] # * => [1, 1, 3, 3, 5, 5]

p '--------arrays intersection---------'
# * return an array with values presented in both arrays
p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] # * => [1, 4, 5]
