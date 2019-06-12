class OlympicMedal
  # * <, >, >=, <=, <=>, .between?
  include Comparable # * include comparable module

  MEDAL_VALUES = { 'Gold' => 3, 'Silver' => 2, 'Bronze' => 1 }

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other) # * if we include Comparable module we have to defind such method
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end


bronze = OlympicMedal.new('Bronze', 5)
silver = OlympicMedal.new('Silver', 10)
gold = OlympicMedal.new('Gold', 15)

p gold > silver
