# Integer
p 5
p 5.next
p 5.class

# * Float
p 0.5
p 0.5.next_float
p 0.5.class

str = '5'

p str
p str.class

# *  Convert return result to integer
p str.to_i.class
#  * Convert result to float
p str.to_f
p str

p str.to_i.to_s

p '-----random numbers--------'
p rand
p rand.round(2)

# * Get random number from 1 to 40
p rand(1..40)

p '--------Number types-----------'
p 123456                    # Fixnum
p 123_456                   # Fixnum (underscore ignored)
p -543                      # Negative Fixnum
p 123_456_789_123_345_789   # Bignum
p 0xaabb                    # Hexadecimal
p 0377                      # Octal
p -0b101_010                # Binary (negated)

p '--------Integers iterators---------'
3.times        { print "X " }
1.upto(5)      { |i| print i, " " }
99.downto(95)  { |i| print i, " " }
50.step(80, 5) { |i| print i, " " }

puts
p '-------to_i floor ceil round round(2) abs---------'
p 10.1.to_i
p 10.1.floor
p 10.1.ceil
p 10.1546.round
p 10.1546.round(2)
# * always positive
p -10.222.abs