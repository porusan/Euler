require './lib011'
require './../008/lib008'

a = readArray './data011.txt'

rows = Array.new(a)
(transpose45  a).each {|r| rows.push r}
(transpose180 a).each {|r| rows.push r}
(transpose315 a).each {|r| rows.push r}

max = 0

rows.each do |r| 
  
  temp = calcHighestNConDigits r, 4
  
  if temp > max
    max = temp
  end
  
end

puts max
