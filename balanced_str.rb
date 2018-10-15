def is_balanced(o_b, c_b, str)
  cnt = 0
  adds = {o_b => 1, c_b => -1}
  pars = str.chars.select{ |ch| [o_b, c_b].include? ch }
  pars.each{ |ch| cnt += adds[ch]; return false if cnt < 0 }
  cnt == 0
end

str = '[{()}][stre][{()}]'

puts [['(',')'], ['[',']'], ['{','}']].map{ |ps| is_balanced(*ps, str)}.all?

def is_balanced?(str)
  cnt = 0
  str.chars do |c|
    if ['[','{','('].include? c
      cnt += 1
    elsif [']','}',')'].include? c
      cnt -= 1
    end
  end
  cnt == 0
end

str = '[{()}][stre[{()}]'

p is_balanced?(str)