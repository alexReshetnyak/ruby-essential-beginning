puts "Hi what's your name"

# gets is blocking method, chomp will delete \n simbol
name = gets.chomp

puts "Greate! And what's your age?"

# to_i convert to integer if string it convert to 0
age = gets.chomp.to_i

puts "Name: #{name}, Age: #{age}"
