puts 'i am here'

vector_a = ['a1','a2','a3']
vector_b = ['b1','b2','b3','b4']
vector_c = ['c1','c2','c3','c4','c5']

for x in vector_a do
  for y in vector_b do
    for z in vector_c do
      p "#{x}, #{y}, #{z}"
    end
  end
end