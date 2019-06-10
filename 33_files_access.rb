# * read file
File.open('novel.txt').each do |line|
  p line
end

p '-----write to file-----'
File.open('novel.txt', 'w') do |file| # * create new file or overwrite content
  file.puts 'new string from ruby'
  file.write 'The same like puts but do not add line break. '
  file.puts ' Good!'
end

File.open('novel.txt', 'a') do |file| # * (append) create new file or add new information to file
  file.puts 'some string added to the end of the file (append)'
end

p '-----rename and delete file-----'
# File.rename('novel.txt', 'newName.txt') # * permission denied (windows problem)
if File.exist?('novel.txt')
  # File.delete('novel.txt') # * permission denied (windows problem)
end


p '---get access to other file---'
p 'This is beginning!'
load './end.rb' # * transfer control to remote file
p 'This was successful'


p '---require and require_relative methods ---'
p 'This is beginning!'
require './end'
require_relative 'end' # * look for file in the same folder
