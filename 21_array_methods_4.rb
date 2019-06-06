p '--------find---------'
words = ['word1', 'wqwe', 'newword', 'else']

# * find first result
p words.find{ |word| word.length > 3 }

p '--------detect---------'
# * worked like find
p words.find{ |word| word.length > 3 }
