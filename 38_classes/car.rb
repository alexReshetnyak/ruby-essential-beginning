# * protected methods

class Car

  attr_reader :model

  def initialize(age, miles, model)
    base_value = 20000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)

    @value = base_value - age_deduction - miles_deduction
    @model = generate_model_name(model)
  end

  def compare_car_with(car)
    self.value > car.value ? @model + ' is better!' : car.model + ' is better!'
  end

  protected # * All methods bellow are protected

  def value
    @value
  end

  def say
    p @model + ' say Rrrrr'
  end

  private

  def generate_model_name(name)
    name.length.to_s << ' ' + name
  end
end

class FastCar < Car
  def say_r
    say
  end
end

civic = Car.new(3, 30000, 'civic')
fiat = Car.new(2, 20000, 'fiat')
bmw = FastCar.new(1, 10000, 'bmw')
p civic.compare_car_with(fiat)
bmw.say_r
