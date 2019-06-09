menu = {
  burger: 3.99,
  taco: 5.44,
  chips: 8.33
}


p '------fetch method------'
# * worked like array fetch method (get certain value)
p menu.fetch(:chips)
p menu.fetch(:not_exist, 'default return')


p '------length empty? method------'
p menu.length # * => 3
p menu.empty? # * => false


p '------each, each_pair, each_key, each_value method------'
menu.each do |key, value|
  p key
  p value
end

menu.each do |hash_data| # * equal to each_pair
  p hash_data # * => [:burger, 3.99]
end

# menu.each_key
# menu.each_value
menu.each_pair { |data|  p data }


p '------sert sort_by methods------'
pokemon = { squirtle: 'Water', buldasaur: 'Grass', charizzard: 'Fire' }
# * sort by key
p pokemon.sort
p pokemon.sort.reverse
# * sort by value
p pokemon.sort_by { |key, value| value }
p pokemon.sort_by { |key, value| value }.reverse


p '------key? value? methods------'
# * check if key exist in hash
p menu.key?(:chips)
# * check if value exist in hash
p menu.value?(5)


p '------delete method------'
# * delete value from hash
menu.delete(:chips)
p menu
some_array = [1, 2, 3]
some_array.delete(2)
p some_array


p '------select reject methods------'
p menu.select { |key, value| value > 4 } # * {:taco=>5.44}
# * oposite of select return hash
p menu.reject { |key, value| value > 4 } # * {:burger=>3.99}


p '------merge method------'
market = { garlic: '3 cloves', tomatoes: '5 batches', milk: '10 gallons', potato: '6 kilos' }
kitchen = { garlic: '2 cloves', tomatoes: '6 batches', milk: '1 gallons', corn: '5 items' }

# * merge hashes, if keys a the same get value from hash that is passed as argument (market)
p kitchen.merge(market) # * => {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"10 gallons", :corn=>"5 items", :potato=>"6 kilos"}
p market.merge(kitchen) # * => {:garlic=>"2 cloves", :tomatoes=>"6 batches", :milk=>"1 gallons", :potato=>"6 kilos", :corn=>"5 items"}


p ' --------method that will calculate the words in sentence--------- '
sentece = 'Once upon a time a land far far away'
def word_count(string)
  words = string.split(' ')
  count = Hash.new(0)

  words.each { |word| count[word] += 1 }

  count
end

p word_count(sentece)
