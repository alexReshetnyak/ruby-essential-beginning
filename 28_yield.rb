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
