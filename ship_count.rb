grid = [[0,0,0,0,0,0],
        [0,1,0,0,0,0],
        [1,0,0,0,0,0],
        [0,0,0,0,0,0],
        [0,0,0,0,0,1]]

def has_ship?(i, j, grid)
  true if grid[i][j] == 1
end

points = [[0,0], [4,5]]

count = 0

for i in 0..points[1][0]
  for j in 0..points[1][1]
    count += 1 if has_ship? i, j, grid
  end
end

puts "Ships: #{count}"