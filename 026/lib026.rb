require '../003/lib003.rb'

def getDecimalPeriod n

  # the decimal period of n is directly related to the prime factors of n
  factors = getPrimeFactors n

  # if n is NOT relatively prime to 10, then it has no decimal period
  # that is it "divides cleanly" i.e. 1/2 = .5 and 1/5 = .2
  modFactors = factors - [2, 5]

  if (modFactors).empty?
    return 0
  end

  # now short circuit for some common primes - 
  if modFactors.length == 1
    if modFactors[0] == 3
      return 1
    elsif modFactors[0] == 7
      return 6
    elsif modFactors[0] == 11
      return 2
    end
  end

  # after this point, math - b/c floating point arithmetic is imprecise
  # so we have a couple points:
  # 1) the decimal period of n can be AT MOST equal to the TOTIENT FUNCTION, phi.
  ## i) The TOTIENT FUNCTION, phi(n) is the count of integers less than n that are relatively prime to n
  ## ii) as we can see, the totient of a prime number p is always p - 1
  ## iii) therefore, as we can see above, for some primes, (like 11), the repeating decimal is less than the totient
  # 2) In actuality, decimal period of n will always be a factor of phi(n)
  # 3) The actual value for the decimal period of n is the multiplicative order of 10 mod n 
  ## i) The multiplicative order n of an integer a is the smallest (positive) integer k such that a^k mod n = 1
  ## ii) commentary: this seems like it could be very expensive to compute
  # 4) The phi function is multiplicative - that is, for relatively prime numbers m, n phi(m*n) == phi(m)*phi(n)
  # 5) The decimal period of n when n is composite of two or more distinct primes is also multiplicative

  return multiplicativeOrderOf10 n

end

# i.e. the totient of a number
# i.e. the count of all numbers less than n that are relatively prime (no common factors) to n
# note: by convention, 1 is relatively prime to all numbers
def phi n

  factors = getPrimeFactors(n)

  if factors.length == 1
    return n - 1
  end

  return phi_factors factors

end

# the totient can easily be found from the prime factorizaton since it is multiplicative function (with regards to number theory)
# the rule is as follows:
# - phi(p) where p is prime is p - 1 (see above)
# - phi(p*p) = p * phi(p) (there is a more complicated proof for this or you plug it in a figure it out)
# - phi(p*q) where p and q are relatively prime = phi(p) * phi(q)
def phi_factors factors

  result = 1
  distinctPrimes = []
  
  for f in factors
    if distinctPrimes[f] == nil
      result *= f - 1
      distinctPrimes[f] = true
    else
      result *= f
    end
  end

  return result

end


@@ordersOf10 = [1]
# assuming we know for certain at least i - 1 orders
def getOrderOf10 i
  retVal = @@ordersOf10[i]

  if retVal == nil
    retVal = @@ordersOf10[i-1] * 10
    @@ordersOf10[i] = retVal
  end

  return retVal
end

def multiplicativeOrderOf10 n

  r = 0;
  i = 0;

  while r != 1
    i += 1
    r = getOrderOf10(i) % n
  end

  return i

end 