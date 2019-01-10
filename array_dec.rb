arr = Array.new([[0,0,1,0,0],
                 [1,0,0,1,0],
                 [1,0,0,0,0],
                 [1,1,0,1,0],
                 [0,1,0,0,1]])

arra = Array.new([5,6,3,2,1,4,2,1])

arr.each do |row|
  row.sort!
end

puts 'i am here'

puts arr

puts arra
