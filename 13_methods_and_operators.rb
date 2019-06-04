num = 1000

# * Check if object has method
p num.respond_to?('next')

# * safe way to call something
if num.respond_to?('length')
  p num.length
end

p '----------------------'
# * :next is a symbol and equal to 'next' but with out embedded methods that's why it very light
p 'hello'.respond_to?(:next)
p 'hello'.respond_to?(:length)
p 'hello'.respond_to?(:odd?)


p '----------ternaty operator------------'
p 1 < 2 ? 'yes' : 'no'

pokemon = 'Pikachu'
p pokemon == 'Charizard' ? 'Fireball' : 'Thats not Charizard'

p '------Default or option param -------'
def make_phone_call(number, area_code, code = 1)
  p "Calling #{code} #{area_code} #{number}"
end

make_phone_call(7777, 22)

p '-----Call method from another method-----'
def add(a,b)
  a + b
end

def substract(a, b)
  a - b
end

def calculator(a, b, operator = 'add')
  if operator == 'add'
    "The result is: #{add(a, b)}"
  elsif operator == 'substract'
    substract(a, b)
  else
    'That is not a real operation, genius!'
  end
end

p calculator(2, 3, 'add')


p '----Case Statment----'
def rate_my_food(food)
  case food
  when 'Steak'
    'Pass the steak sauce!'
  when 'Sushi'
    'Great! I like rise'
  when 'Tacos', 'Burritos', 'Potato'
    'Greate choice'
  else
    'I dont know about this food'
  end
end

p rate_my_food('Potato')

def calculate_school_grade(grade)
  case grade
  # * 90..100 range operator
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end
p calculate_school_grade(95)
