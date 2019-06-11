p '----Create a class----'

class Gadget
  def initialize # * worked like constructor method in JS, it calls every time when we creat new object (private)
    @username = "Username is User-#{rand(1..100)}" # * Instance variable (private)
    @password = 'topsecret'
    @production_number = rand(1..100)
  end

  def info # * public method
    "Gadget #{@production_number} has username #{@username}"
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

p '---------Instance methods------------'
p phone.info
p phone.methods - Object.methods # * => [:info]

p '---overwrite .to_s method----'
p phone.respond_to?(:to_s)
