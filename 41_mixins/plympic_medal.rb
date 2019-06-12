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

p '--------------------'
class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each # * required for Enumerable module
    snacks.each do |snack|
      yield snack # * pass control to block
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack('Doritos')
bodega.add_snack('Jolly Ranchers')
bodega.add_snack('Slim Jims')
bodega.each { |snack| p "#{snack} is delicious" }

p bodega.any? { |snack| snack.length > 9 }
p bodega.select { |snack| snack.downcase.include?('j') }
p bodega.reject { |snack| snack.downcase.include?('j') }
