module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Parent; module Child; module Child2 # * name spaces
  def self.getSome
    'data'
  end
end; end; end


p '-----------RECTANGLE-----------------'
p Parent::Child::Child2.getSome

data = '123'
data << '4' << '5' unless data.include?('4')
p data
p '-----------RECTANGLE-END-------------'
puts