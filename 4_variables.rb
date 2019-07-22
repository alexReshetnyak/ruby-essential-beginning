name = 'Boris'
lastName = 'Lit'

bool = true
age = 30 + 1

puts name + ' ' + lastName
puts age + 2

# a = 1
# b = 2
# c = 3

a, b, c = 1, 2, 3
a, b = b, a
p a, b, c

p '-----------------------'
x = 0	
a, b, c = x, (x += 1), (x += 1) # * =>	[0, 1, 2]
p a, b, c

p '------Constant-------'
# constant
I_AM_CONSTANT = 10

# couse error
# I_AM_CONSTANT = 11
p I_AM_CONSTANT


p '----Conditional assigment ---------'
y = nil
p y
# * assign new value only if current value is nil
y ||= 5
p y


p '---------Global Variables-----------'
$global_var = 10
not_global = 11

p $global_var

def check_var
  p $global_var
  # * p not_global - will cause error message

  def check_var2
    p $global_var
    $global_var2 = 12
  end
end

check2 = check_var
check2
p $global_var2 # * => nil
p $not_existing_global_var # * => nil
# p not_existing_local_var # * will cause error message