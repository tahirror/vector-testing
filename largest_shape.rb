matrix = Array.new([[0,1,1,0,0],
                    [1,1,1,0,0],
                    [1,1,1,1,0],
                    [0,1,0,1,1],
                    [1,1,0,1,0]])
count = 0
@cell_count = 0

def adjacent(i, j, matrix)
  if matrix[i][j] == 1
    @cell_count += 1
    matrix[i][j] = -1
  end

  adjacent(i-1, j, matrix) if i-1 >= 0 && matrix[i-1][j] == 1
  adjacent(i+1, j, matrix) if i+1 < matrix.count && matrix[i+1][j] == 1
  adjacent(i, j-1, matrix) if j-1 >= 0 && matrix[i][j-1] == 1
  adjacent(i, j+1, matrix) if j+1 < matrix.first.count && matrix[i][j+1] == 1
end

matrix.each_with_index do |row, i|
  row.each_with_index do |cell, j|
    if matrix[i][j] == 1
      @cell_count = 0
      adjacent(i, j, matrix)
      if count < @cell_count
        count = @cell_count
      end
    end
  end
end

puts "Shape_Count: #{count}"


puts "Matrix_Rows_Count: #{matrix.count}"
puts "Matrix_Cols_Count: #{matrix.first.count}"




# width = metrix.flatten.max.to_s.size+2
# puts "Metrix: #{metrix.map { |a| a.map { |i| i.to_s.rjust(width) }.join }}"

# def adjacent(arr, r, c)
#   rows_ndx = arr.each_index.select { |i| (i-r).abs < 2 }
#   cols_ndx = arr.first.size.times.select { |j| (j-c).abs < 2 }
#   rows_ndx.each_with_object([]) do |i,a|
#     cols_ndx.each { |j| a << arr[i][j] unless [i,j] == [r,c] }
#   end
# end
#
# arr = [[0,0,1,0,0], [1,1,1,0,0], [0,1,0,0,1], [0,1,0,0,0], [0,1,0,0,0]]
#
# # arr = [
# #     [-1,  2,  3,  4],
# #     [-2,  9,  1,  5],
# #     [-3,  8,  7,  6],
# #     [-4, -5, -6, -7]
# # ]
#
# (0..2).each do |i|
#   (0..3).each do |j|
#     puts "adjacent to #{arr[i][j]} at r=#{i}, c=#{j} = #{adjacent(arr, i, j)}"
#   end
# end