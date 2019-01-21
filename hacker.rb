require 'json'
require 'stringio'

# Complete the sockMerchant function below.
# def sockMerchant(n, ar)
#   sum = 0
#   ar.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }.map{|k,v| sum += v/2 }.compact
#   sum
# end
#
# # Complete the sockMerchant function below.
# def sockMerchant2(ar)
#   sum = 0
#   ar.each{|v| sum += v }
#   sum
# end

# def sockMerchant a, b
#   alic=0
#   bob=0
#   a.each_with_index do |v,i|
#     alic+=1 if v>b[i]
#     bob+=1 if v<b[i]
#   end
#   [alic, bob]
# end

def sockMerchant a
  p=0
  n=0
  z=0
  size=a.size
  a.each do |v|
    p += 1 if v>0
    n += 1 if v<0
    z += 1 if v==0
  end
  p p/size unless p.nil?
  p n/size unless n.nil?
  p z/size unless z.nil?
end


fptr = File.open('test','w')

# n = gets.to_i
# ar = gets.rstrip.split(' ').map(&:to_i)

a = [1,2,2,2,22,22,22,22,4,4,4]

b = [1,2,2,2,22,22,22,22,4,4,4]

result = sockMerchant a

p "Ans: #{sockMerchant a}"

fptr.write result
fptr.write "\n"

fptr.close()