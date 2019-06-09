# * Procs is more effitient way to do something in a loop

cubes = Proc.new { |number| number ** 3 }
squares = Proc.new { |number| number ** 2 }

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) } # * activate Proc

# a_cubes = a.map(&cubes) # * activate Proc
# b_cubes = b.map(&cubes) # * activate Proc
# c_cubes = c.map(&cubes) # * activate Proc

# a_cube = a.map { |num| num ** 3 }
# b_cube = b.map { |num| num ** 3 }
# c_cube = c.map { |num| num ** 3 }

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
