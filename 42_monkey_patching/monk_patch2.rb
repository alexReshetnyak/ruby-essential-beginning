
class Hash
  def identify_duplicate_values
    values = []
    dupes = []

    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end

    dupes.uniq
  end

  def custom_each
    i = 0
    while i < self.length
      yield("Index: #{i}")
      i+=1
    end
  end
end

scores = { a: 100, b: 100, c: 83, d: 50, e: 13, f: 6, g: 100, h: 13, i: 50, j: 80 }
p scores.identify_duplicate_values
scores.custom_each { |index| p "Each #{index}" }


p '-------------------'
class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

groosebumps = Book.new('Night of the Living Dummy', 'R.L. Stine', 100)

class Book
  def read
    1.step(@pages, 10) { |page| p "Reading page #{page} ..." }
    p "Done! #{@title} was a greate book!"
  end
end

animal_farm = Book.new('Animal Farm', 'George Orwell', 50)
p animal_farm
animal_farm.read
groosebumps.read # * also available
