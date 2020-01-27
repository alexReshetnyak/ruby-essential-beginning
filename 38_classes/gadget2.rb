p '----Create a class----'

class Gadget
  # attr_writer :password  # * setter
  attr_reader :production_number, :apps # * getter
  attr_accessor :username, :password  # * Getter and setter in the same time

  def initialize(username = 'default name', password = 'default password') # * worked like constructor method in JS, it calls every time when we creat new object (private)
    @username = username # * Instance variable (private)
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Overwrited .to_s method, username #{username}"
  end

  def password=(new_password) # * custom setter method, overwrite attr_accessor
    @password = new_password if validate_password(new_password)
  end

  def reset(new_username, password)
    self.username = new_username # * use self insted @ to use setters
    self.password = password
    self.apps = []
  end

  private # * all methods bellow are private

  attr_writer :apps # * private setter

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ('A'..'Z').to_a
    middle_digits = '2019'
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/ # * new_password =~ /\d/ - password should contain number
  end
end

phone = Gadget.new('user', 'password123')
p phone.production_number
p phone.password
p phone.username
phone.password = '1234567'
p phone.password

p '--------Multiple setter-------------'
phone.reset('reseted_username', 'reseted_password_1')
p phone.password
p phone.production_number
p phone.username
