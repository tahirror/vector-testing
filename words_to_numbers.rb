require 'numbers_in_words'

words_arr = ['zero', 'one hundred', 'three googol', 'zero', 'nine', 'six', 'zero', 'null', 'zero', 'one', 'three', 'zero', 'nine', 'six', 'zero', 'null', 'zero', 'one', 'three', 'zero', 'nine', 'six', 'zero', 'null']

def words_to_int(words_arr)
  output=''
  words_arr.each do |w|
    output += "#{NumbersInWords.in_numbers(w)}"
  end
  output
end

puts "Result: #{words_to_int(words_arr)}"