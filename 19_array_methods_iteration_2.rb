keys = 'a'..'f'
arrKeys = keys.to_a

numbers = 5..10
numbers = numbers.to_a
p arrKeys


p '-----each iteration through-----'
arrKeys.each do |key|
  p "This is #{key}"
end

arrKeys.each {|key| p key.upcase}

odds = []
evens = []
numbers.each do |number|
  # odds << number if number.odd?
  # evens << number if number.even?
  number.even? ? evens << number : odds << number
end
p "All odds: #{odds}"
p "All evens: #{evens}"

p '-----each within each------'
shirts = ['striped', 'plain white', 'plaid']
ties = ['polka', 'solid color', 'boring']

shirts.each do |shirt|
  ties.each do |tie|
    p "Option: A #{shirt} whith #{tie}"
  end
end

p '-----each with index------'
numbers.each_with_index do |number, index|
  p "Number: #{number}, index: #{index}"
end

p '----for loop---'
numbers = [1, 2, 3]
num = 10
for num in numbers do
  p num
end

# * with for we see num variable here (not good)
p num

p '-------map-----------'
new_squares = numbers.map{ |number| number**2 }
p new_squares

p '------ iteration over array using while ------'
i = 0
while i < arrKeys.length
  p arrKeys[i]

  break if arrKeys[i] == 'c'

  i += 1
end

p '------ iteration over array using until ------'
ind = 0
until ind >= arrKeys.length
  old_ind = ind
  ind += 1

  next if arrKeys[old_ind] == 'b'

  p arrKeys[old_ind]
end

p '------ reverse ------'
p numbers.reverse

#  * rewrite numbers array
numbers.reverse!
p numbers


