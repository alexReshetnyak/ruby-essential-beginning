
p //.class

phrase = '99 The Ruby 99 programming language is amazing.'

p phrase =~ /T/ # * get first match index position => 0
p phrase =~ /m/ # * => 16
p phrase =~ /\./ # * => 41
p phrase =~ /x/ # * => nil

p '-----Wildcard symbol------'
p phrase =~ /.am/ # * '.' - is mean find any single character
p phrase.scan(/.am/) # * => ["ram", " am"]

p '-----Backslash symbol------'
p phrase.scan(/\./) # * => ["."]
# * \d - any digit
# * \D - any non digit
# * \s - any whitespace symbol
# * \S - no whitespace symbol
# * \w	Any word character (letter, number, underscore)
# * [^abc]	Any single character except: a, b, or c
# * ^	Start of line
# * .	Any single character
# * $	End of line
# * \A	Start of string
# * \z	End of string

p '-----anchors------'
p phrase.scan(/\A\d/) # * \A search only from the begining
p phrase.scan(/\d\z/) # * \z indicate end of the string

p '-----exclude characters------'
p phrase.scan(/[^abcdefghijklmnorstuv, \s\d\.]/) # * '^' - mean ignore characters abcd... => ["T", "R", "y", "p", "z"]

