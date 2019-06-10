# * Lambda like Proc
squares_proc = Proc.new { |number| number ** 2 }
squares_lambda = lambda { |number| number ** 2 }

p [1, 2, 3].map(&squares_proc)
p squares_proc.call(5) # * Call proc with an argument

p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5) # * Call lambda with an argument

p '----difference 1 not passed arguments---'
some_proc = Proc.new { |name, age| "Your name: #{name}, age: #{age}"}
some_lambda = lambda { |name, age| "Your name: #{name}, age: #{age}"}

p some_proc.call('Alex', 31)
p some_proc.call('Alex') # * instead age will be nil
p some_lambda.call('Alex', 31)
# p some_lambda.call('Alex') # * cause an error

p '----difference 2  how return work inside proc/lambda---'
def diet
  status = lambda { return 'You gave in' } # * return mean pass control to method
  status.call
  'You completed the diet'
end

def diet2
  status = Proc.new { return 'You gave in' } # * return the value in method
  status.call
  'You completed the diet' # * will never rich this line
end

p diet
p diet2


p '----lambda efficiency---'
def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric) # * Numeric is float + integer class
end

def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric) # * Numeric is float + integer class
end

def convert_to_rupees(dollars)
  dollars * 68.02 if dollars.is_a?(Numeric) # * Numeric is float + integer class
end

to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 28.22 }
to_rupees = lambda { |dollars| dollars * 63.33 }

def convert(dollars, currency)
  currency.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)
