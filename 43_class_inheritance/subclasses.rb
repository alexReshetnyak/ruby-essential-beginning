class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

class Manager < Employee # * inheritance, subclass inherits superclass
  def initialize(name, age, rank)
    super(name, age) # * call initialize method from superclass
    @rank = rank
  end

  def yell
    'Who is the boss? I am the boss!'
  end

  def introduce
    result = super
    result += ", I am also a manager!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    'I am working! I am working!'
  end
end

p '--------------'
bob = Manager.new('Bob', 48, 1)
dan = Worker.new('Daniel', 36)

p bob.introduce
p dan.introduce

p '-----------'
p Manager.superclass
p Worker.superclass

p Manager < Employee # * Manager inferet from Employee?
p Worker.ancestors

p '----is_a? istance_of?----'
p bob.is_a?(Manager) # * is bob extend from manager (not directly)?

p bob.instance_of?(Object) # * is bob extend from Object (directly)?

p '-----------------'
p bob.yell
p dan.clock_in('8:30 AM')
p dan.yell


p '-----------------'
