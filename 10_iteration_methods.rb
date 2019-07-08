p 1.next()

p 1 + 2
p 1.+(2)

p '--------between?--------'
p 9.between?(1, 9.0) # * => true

p '-------to_i floor ceil round round(2) abs---------'
p 10.1.to_i
p 10.1.floor
p 10.1.ceil
p 10.1546.round
p 10.1546.round(2)
# * always positive
p -10.222.abs

p '-------+=---------'
a = 5
a = a + 5
a += 5
p a

p '-------times---------'
# * Execute 10 times
3.times { |count| p "Alex the best #{count}" }

# * The same but for multiple rows
# * |count| is a block variable, exist only in block
3.times do |count|
  p "Alex the best #{count}"
  p 'It true'
end

p '-------downto-upto--------'
# * reverse times
3.downto(0) { |i| p i }

8.upto(10) do |i|
  p i
end

p '-------step---------'
# * from 1 to 10 and iteration step size 2
1.step(10, 2) { |step_number| p "Step number: #{step_number + 1}" }
1.step(10, 3) { |step_number| p "Step number: #{step_number}" }
