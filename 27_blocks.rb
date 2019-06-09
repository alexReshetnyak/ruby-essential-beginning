# * Block is a collection of code to be executed
# * Block must be attached to method call
# * Block can be defined with {} or with 'do end'
# * Block can get and update a value of local variable within block

evens = [2, 4, 6, 8]
evens.each { |number| p number ** 3 }
5.times do |index|
  p index
end
