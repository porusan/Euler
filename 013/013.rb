# Find the first 10 digits of the sum of 100 50-digit numbers
# In Ruby, this is trivial because of automatic conversion and 
# no upper bound to its larger number class "Bignum"

File.open('./data013.txt') do |f|

  f.each_line {|l| sum += l.to_i}

end

answer = sum

puts sum
