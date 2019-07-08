a = [1, 2, 3]
b = a
# * make a copy
c = a.dup

b[0] = 0

p 'arrays'
p a.object_id
p b.object_id
p c.object_id

p '--------------------'
p a
p b
p c
