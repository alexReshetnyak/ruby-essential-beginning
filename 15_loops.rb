i = 1

while i <= 10
  print i.to_s + ', '
  i += 1
end
p ' '
p i

p '-------------------'
# status = true

# while status
#   p 'Please enter username: '
#   username = gets.chomp.downcase
#   p 'Please enter password: '
#   password = gets.chomp.downcase

#   if username == '1' && password == '2'
#     p 'Correct'
#     status = false
#   end
# end

p '-------until--------'
i = 1
# * until is oposite of while
until i > 10
  print "#{i}, "
  i += 1
end

p ' '
p '--------Fizzbuzz----------'
def fizzbuzz(number)
  # * if not integer stop execution
  !number.is_a?(Integer) && return

  number = number.to_i

  i = 1
  until i > number
    if (i % 3).zero? && (i % 5).zero?
      p "Fizzbuzz #{i}"
    elsif (i % 3).zero?
      p "Fizz #{i}"
    elsif (i % 5).zero?
      p "Buzz #{i}"
    end

    i += 1
  end
end

fizzbuzz(30)
