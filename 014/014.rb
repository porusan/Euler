require './lib014.rb'

largestOrbit = 1
result = 1
n = 1

while n < 10**6
  current = calculateCollatzOrbit n
  if current > largestOrbit
    result = n
    largestOrbit = current
  end
  n += 1
end

puts "The number #{result} has the longest chain, which has a length of #{largestOrbit}"