require '../003/lib003'

sum = 0
p = 2

t1 = Time.now

while p < 2000000
  sum += p
  p = getNextPrime p
end

puts 'It took ' + (Time.now - t1).to_s + ' seconds to calculate.'
puts sum
