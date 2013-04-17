require './lib012.rb'
require '../003/lib003.rb'

# The number of divisors of a number can be determined by its the prime factorization
# If a number's prime factorization contains only distinct members,
# then the number of divisors is the 2^(number of prime factors)
# If there are repeated prime factors, then the number of distinct divisors can be _much_ less
#
# SO - in order to find the lowest number with 500 distinct divisors, 
# it needs to have AT LEAST as many prime factors as a the lowest number with all distinct prime factors to satisfy this
# That is, it has to have at least as many prime factors as the the first power of 2 greater than 500, i.e. 512 (2^9). So, at _least_ 9 factors
#
# Second pass:
# There is a more efficient way to determine the number of divisors than calculating all the combinations of the prime factors and removing duplicates
# The number of divisors can be calculated by (count(P1) + 1)*(count(P2) + 1)*...(count(Pn) + 1) (where Pn is a prime factor)

t1 = Time.now

factorThreshold = 9
factors = []

d = 1
n = 1

keepGoing = true

while keepGoing
  n += 1

  t = findTriangleNumber n
  factors = getPrimeFactors t

  # first check if number of factors meets threshold 
  if factors.length > factorThreshold

    d = calculateNumberOfDivisors factors

  end

  if d > 500
    keepGoing = false
  end

end

puts
puts 'Finished in ' + (Time.now - t1).to_s + ' seconds.'
puts 'The lowest found was triangle number #' + n.to_s + ', equal to ' + t.to_s + ', with ' + d.to_s + ' divisors'
print 'This number has ' + factors.length.to_s + ' prime factors: ' + factors.to_s
puts