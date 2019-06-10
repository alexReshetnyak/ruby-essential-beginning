def pass_control
  p 'This is inside method'
  yield # * pass control from method to the block
  p 'Now I am back inside the method'
end

pass_control do
 p 'Now I am inside the block'
end

p '--------------'
def who_am_i
  adjective = yield # * => "Handsome"
  p "I'am very #{adjective}"
end

who_am_i { "Handsome" } # * call method using curly braces

p '-----------------'
def multiple_pass
  p 'Inside the block'
  yield
  p 'Back inside the block'
  yield
end

result = multiple_pass { p "Now I'm inside the block" } # * call method using curly braces
p result # * => "Now I'm inside the block"

p '--------block_given? method---------'
def pass_control_on_conditional
  p 'Inside the method'

  yield if block_given? # * pass control to block only if block exist

  p 'Back inside the method'
end

pass_control_on_conditional do
  p 'Hello from inside'
end

p '--------yielding with arguments---------'
def speak_the_truth
  yield 'Alex' if block_given?
end

speak_the_truth { |name| p "My name is #{name}" }

def speak_the_truth2(name)
  yield name if block_given?
end

speak_the_truth2('Alex') do |name, age|
  p age
  p "My name is #{name}"
end

# * return different values depend if we have block or not
def speak_the_truth3(name)
  return yield name if block_given?
  name
end

p speak_the_truth3('Alex')
p speak_the_truth3('Alex') { |name| "#{name} Reshetnyak" }

p '--------custom each method---------'
def custom_each(array)
  i = 0
  while  i < array.length
    yield array[i]
    i += 1
  end
end

names = ['Alex', 'Boris', 'Melisa']
numbers = [10, 20, 30]

custom_each(names) do |name|
  p "#{name} has length: #{name.length}"
end
