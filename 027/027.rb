require '../003/lib003.rb'

# looking for consecutive primes from iterating n, starting at 0, in the quadratic:
#   n**2 + i*n + j
#
# A few notes:
# - we start at n = 0, so that means:
# -- j must be a prime number
# -- (j will always be positive)
# - other than 2 (a number that won't get high consecutive primes), j will be odd. Therefore:
# -- n**2 + i*n must be even, so the result will be an odd prime
# -- that means i must be odd
# -- n is odd: odd**2 + odd * odd = even, (odd * odd + odd * odd = even), odd * odd = odd, odd + odd = even
# -- n is even: even**2 + odd * even = even, (even * even + odd * even = even), even * even = even, even * odd = even, even + even = even


# we want to iterate over primes, so a simple way to build up a prime array
p = 2
primes = []
while p <= 1000
  primes.push p
  p = getNextPrime p
end

n_max = 0
i_save = 0
j_save = 0

for j in primes
  # take every other in the range
  for i in (-999..999).step(2)
    n = 0
    while isPrimePrime(n**2 + i*n + j)
      n += 1
    end

    if n > n_max
      n_max = n
      i_save = i
      j_save = j
    end
  end
  
end

puts 'here it is! n: ' + n_max.to_s + ' i: ' + i_save.to_s + ' j: ' + j_save.to_s
puts 'product: ' + (i_save * j_save).to_s
