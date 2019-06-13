p '----Create a class----'
require_relative 'app_store'

class Gadget
  # attr_writer :password  # * Getter and setter in the same time
  attr_reader :production_number, :apps # * getter
  attr_accessor :username, :password # * setter

  def initialize(username = 'default name', password = 'default password') # * worked like constructor method in JS, it calls every time when we creat new object (private)
    @username = username # * Instance variable (private)
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Overwrited .to_s method, username #{@username}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |instaled_app| instaled_app.name == name }
    apps.delete(app) unless app.nil?
  end

  def password=(new_password) # * custom setter method, overwrite attr_accessor
    p new_password
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

g = Gadget.new('Alex', 'password1')
p g.apps
g.install_app(:Chat)
g.install_app(:Chat)
g.install_app(:Twitter)
p g.apps

p '-------------'
g.delete_app(:Chat)
p g.apps
p g.apps[0][:developer]
