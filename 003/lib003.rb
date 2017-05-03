@@listOfPrimes = {1 => 2}

def isPrime n
  
  if n == 2
    return true
  elsif n < 2 || n % 2 == 0
    return false
  end

  # hardcode next lowest prime (starting point)
  i = 3
  
  # if there are no factors when reaching the closest integer less than
  # or equal to the square root, then that number is prime
  while i <= (Math.sqrt n).floor
    if n % i == 0
      return false
    end
    # we start on an odd integer, and no multiples of 2 are prime
    i += 2
  end
  
  return true
end

# a better way to determine if a number is prime by only dividing it by known primes
def isPrimePrime n

  if n == 2
    return true
  elsif n < 2
    return false
  end

  j = 1
  i = @@listOfPrimes[j]

  while i <= (Math.sqrt n).floor

    if n % i == 0
      return false
    end

    if @@listOfPrimes[j+1] == nil
      @@listOfPrimes[j+1] = getNextPrime(@@listOfPrimes[j])
    end

    j+=1
    i = @@listOfPrimes[j]

  end

  return true
end


# the most basic way to brute-force finding the next prime
def getNextPrime n
  if n % 2 == 0
    i = n + 1
  else
    i = n + 2
  end
  
  while ! isPrimePrime(i) 
    # no multiples of 2 are prime, and we are starting on an odd number
    i += 2
  end
  
  return i
end

# this works by building up a hash of primes (prime ordinal to value)
# the class variable listOfPrimes is built up from the lowest primes,
# and if a prime ordinal is requested that is beyond the 
# next highest discovered, an error is thrown
# TODO: update this to work when given too high an ordinal
def getPrimeById i

  if i < 1
    raise 'Input must be positive integer greater than zero'
  end

  initial = @@listOfPrimes[i]
  
  if initial != nil
    return initial
  else
    # calculate
    secondary = @@listOfPrimes[i - 1]
    
    if secondary != nil
        p = getNextPrime secondary
        @@listOfPrimes[i] = p
        return p
    else
      raise "Something isn't set up right"
    end
  end
      
end

def getPrimeFactors n

  if n.class.to_s != 'Fixnum' || n < 2
    raise 'Input must be positive integer greater than one'
  end

  i = 1
  p = 2

  while p <= (Math.sqrt n).floor
    
    if n % p == 0
      # recurse!
      factors = [p]
      getPrimeFactors(n / p).each {|i| factors.push i}
      return factors
    end

    i += 1
    p = getPrimeById(i)
  
  end

  # if i > square root of n, then n is prime
  return [n]

end

