p '----Create a class----'

class Gadget
  attr_accessor :password  # * Getter and setter in the same time
  attr_reader :production_number # * getter
  attr_writer :username # * setter

  def initialize(username = 'default name', password = 'default password') # * worked like constructor method in JS, it calls every time when we creat new object (private)
    @username = username # * Instance variable (private)
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Overwrited .to_s method, username #{@username}"
  end

  private # * all methods bellow are private

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ('A'..'Z').to_a
    middle_digits = '2019'
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

phone = Gadget.new('user', 'password')
p phone.production_number
