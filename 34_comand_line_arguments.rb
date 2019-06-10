ARGV.each do |argument|
  number = argument.to_i
  p "The argument is #{number} - #{argument}"
end
#  * ruby 34_comand_line_arguments.rb 1 2 4 jjjjj
# * Output:
# * "The argument is 1 - 1"
# * "The argument is 2 - 2"
# * "The argument is 4 - 4"
# * "The argument is 0 - jjjjj"
