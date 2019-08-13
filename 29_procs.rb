# * Procs is more effitient way to do something in a loop (anonymous function)
# * You can use Proc everywhere instead block

cubes = proc { |number| number ** 3 }
squares = Proc.new { |number| number ** 2 }

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) } # * activate Proc

p a_cubes
p b_cubes
p c_cubes

p '------Second example-----'
currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_pesos = Proc.new { |currency| currency * 20.70 }

p currencies.map(&to_euros)
p currencies.map(&to_pesos)


p '------3 example-----'
ages = [10, 60, 92, 30, 43, 30]
is_old = Proc.new do |age|
  age > 50
end
p ages.select(&is_old)

# * Or you can do this alternavive way
def filter_age(age)
  age > 50
end
p ages.select { |age| filter_age(age) }


p '--------proc + yield---------'
def greeter(string1)
  p 'I am inside greeter'
  p string1
  yield
end

phrase = Proc.new do
  p 'Inside the proc'
end

greeter('parametr for method', &phrase)


p '-----pass method as Proc----'
p ['1', '2', '3'].map { |number| number.to_i }
p ['1', '2', '3'].map(&:to_i) # * use ruby to_i method as Proc
p [1, 2, 3, 4, 5].select(&:even?)

p '-----method with Proc parameters----'
def talk_about(name, myproc)
  p "Let me tell you about #{name}"

  myproc.call(name)
end

good_things = Proc.new do |name|
  p "#{name} is a genius!"
end

bad_things = proc do |name|
  p "#{name} is a dolt!"
end

wors_things = ->(name) { p "#{name} is awful" } # * -> equal to Proc.new

def method2(data)
  p data
end

talk_about('Alex', good_things)
talk_about('Brock', bad_things)
talk_about('Gary', wors_things)
talk_about('Liza', method(:method2)) # * creates proc from method
