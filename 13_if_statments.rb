
if 5 < 7
  p 'True'
end

word = 'zebra'
if word.include?('eb')
  p 'Yes'
end

if ''
  p 'Empty string is true'
end

if 0
  p '0 is true'
end

if nil
  p 'nil is false'
end

if false
  p 'false is false'
end

p '-----------------'
color = 'red'

if color == 'green'
  puts 'Color is green'
elsif color == 'red'
  puts 'Color red'
else
  puts 'Color not green'
end

p '------------------'

def odd_or_even(number)
  if number.odd?
    'Thats number is odd'
  else
    'Thats number is even'
  end
end

p odd_or_even(2)

p '------------------'
age = 25

if age > 18 && age < 60
  p 'You can go'
end

if age == 21 || age == 25
  p 'Your age 21 or 25'
end

p '------------------'
def authenticate_agent(rank, name, credentials)
  if (rank == '007' && name == 'James Bond') || credentials == 'Secret Agent'
    p 'Hello secret agent'
  else
    p 'Access denied ' + name
  end
end

authenticate_agent('007', 'James Bond', 'Spy')

p '----Negation with !----'
p !true
p !!3.14


p '----unless keyword----'
password = 'topsecret'

# * unless is the oposite of if
unless password == 'whiskers'
  p 'not allowed'
else
  p 'There is right password'
end


p '-------ternaty operator------'
p 1 < 2 ? 'yes' : 'no'

pokemon = 'Pikachu'
p pokemon == 'Charizard' ? 'Fireball' : 'Thats not Charizard'


p '------Statement modifires------'
number = 100
number = number && 600

p 'Huge number' if number > 400
