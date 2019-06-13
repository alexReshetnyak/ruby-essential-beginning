class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    defaults = { age: 31, occupation: 'Candidate', hobby: 'Running for office', birthplace: 'Ukraine' }
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = { hobby: 'Fishing', birthplace: 'Lugansk', age: 53 }
senator = Candidate.new('Mr. Smith', info)
p senator.occupation
p senator.birthplace

a = { a: 2, b: { a: 1, b: 2, c: 3 } }
b = { a: 1, b: { a: 2, b: 1 } }
a.merge!(b)
p a
