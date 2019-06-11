p '-----superclass method-----'
p 5.class # * => Integer
p 5.class.superclass # * => Numeric
p 5.class.superclass.superclass # * => Object
p 5.class.superclass.superclass.superclass # * => BasicObject
p 5.class.superclass.superclass.superclass.superclass # * => nil

p '----ancestors method----'
p 5.class.ancestors # * => [Integer, Numeric, Comparable, Object, Kernel, BasicObject]

p '----methods method----'
p 5.methods.sort # * => array of methods

fixnum_methods = 5.methods
float_methods = 3.14.methods

p fixnum_methods & float_methods # * get methods that exist in both arrays
p fixnum_methods - float_methods # * get methods that uniq in both array
