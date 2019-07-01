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
    self.value > car.value ? 'Your car is better!' : 'Your car is worse'

    p generate_model_name('McLaren')
    self.model
  end

  protected # * All methods bellow are protected

  def value
    @value
  end

  private

  def generate_model_name(name)
    name.length.to_s << ' ' + name
  end
end

civic = Car.new(3, 30000, 'civic')
fiat = Car.new(1, 20000, 'fiat')
p civic.compare_car_with(fiat)
