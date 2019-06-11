p '----Create a class----'

class Gadget
  def initialize(username = 'default name', password = 'default password') # * worked like constructor method in JS, it calls every time when we creat new object (private)
    @username = username # * Instance variable (private)
    @password = password
    @production_number = rand(1..100)
  end

  attr_accessor :password, :production_number # * Getter and setter in the same time
  # attr_reader :password # * getter
  # attr_writer :password # * setter

  def info # * public method
    "Gadget #{self.get_production_number} has username #{@username}, Class: #{self.class}"
  end

  def get_production_number
    @production_number
  end

  def username # * Getter
    @username
  end

  def username=(new_name) # * Setter
    @username = new_name
  end

  def to_s
    "Overwrited .to_s method, username #{@username}"
  end
end

# * create new classes
phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

p phone # * <Gadget:0x000000000266da30>
p laptop # * <Gadget:0x000000000266d968>
p microwave # * <Gadget:0x000000000266d828>
p Gadget.superclass # * => Object
p phone.is_a?(Gadget) # * => true
p phone.is_a?(Object) # * => true
p phone.respond_to?(:class) # * check if object has such method => true

p '---------------------'
p phone.object_id
p laptop.object_id
p ({ x: 1 } == { x: 1 }) # * true
p ({ x: 1 }.object_id == { x: 1 }.object_id) # * false
p phone == laptop # * false


p '---------Instance variables------------'
p phone.instance_variables

p '-----Instance methods--------'
p phone.info
p phone.methods - Object.methods # * => [:info]

p '---overwrite .to_s method----'
p phone.respond_to?(:to_s)
p phone.to_s

p '---self keyword----'
p phone.info

p '---getter method----'
p phone.username

p '---setter method----'
phone.username = 'New username'
p phone.username

p '-----accessor methods------'
p phone.password
p phone.production_number
phone.password = 'new password'
phone.production_number = 'new production number'
p phone.password
p phone.production_number

p '----add parameters to initialize method----'
phone2 = Gadget.new('Alex', 'some123')
p phone2.username