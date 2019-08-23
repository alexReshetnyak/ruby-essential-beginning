# * https://rubular.com/ - website regular expression editor

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


p '---sub and gsub methods----'
# * will change first found character
p 'whimper'.sub('m', 's') # * => "whisper"
# * will change all found character
p 'an apple'.gsub('a', 'A') # * => "An Apple"
p "(555)-555 1234".gsub(/[-\s\(\)]/, '') # * => "5555551234"

p '--------interpolation-----------'
word = 'ama'
pattern = %r{(?mx)#{word}}
p phrase.scan(pattern)

p '--------regular expression groups-----------'
string = "RubyOnRails: This is a test"
one, two, three = string.match(/(^.*)(:)(.*)/i).captures # * captures returns the array of captures; equivalent to mtch.to_a[1..-1]

p one   #=> "RubyOnRails"
p two   #=> ":"
p three #=> " This is a test"
