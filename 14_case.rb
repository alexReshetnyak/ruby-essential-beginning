

p '-----Call method from another method-----'
def add(a,b)
  a + b
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

def substract(a, b)
  a - b
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

