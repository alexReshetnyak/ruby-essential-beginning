
module LengthConversions
  WEBSITE = 'www.site.com' # * constant

  def self.miles_to_feet(miles) # * module method
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

p LengthConversions::WEBSITE # * get module constant
p LengthConversions.miles_to_feet(100)
