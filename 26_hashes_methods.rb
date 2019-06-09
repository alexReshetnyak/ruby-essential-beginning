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
