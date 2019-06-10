p '-----start_with? end_with? methods-----'
phrase = 'Ruby is amazing programming 555-44 language'

p phrase.start_with?('Ruby is') # * => true
p phrase.start_with?('ruby is') # * => false
p phrase.downcase.start_with?('ruby is') # * => true

p phrase.end_with?('age') # * => true

p '---custom start_with? end_with?----'
def custom_start_with?(string, substring)
  string[0, substring.length] == substring
end

def custom_end_with?(string, substring)
  p string[-substring.length, substring.length]
  string[-substring.length, substring.length] == substring
end

p custom_start_with?(phrase, 'Ruby')
p custom_end_with?(phrase, 'age')

p '---include? method----'
p phrase.include?('amazing') # * true

p '---scan method----'
p phrase.scan(/am/) # * return array with all matchces => ["am", "am"]
p phrase.scan(/[am]/) # * => ["a", "m", "a", "a", "m", "m", "a", "a"]
p phrase.scan(/\d+/) # * \d+ - any digit character one or more times => ["555", "44"]
p phrase.scan(/\d+/) { |digit_found| p 'Digit Match: ' + digit_found.to_s } # * \d+ - any digit character one or more times => ["555", "44"]
