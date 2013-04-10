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

def getNextPrime n
  if n % 2 == 0
    i = n + 1
  else
    i = n + 2
  end
  
  while ! isPrime(i) 
    i += 2
  end
  
  return i
end

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
      primes = [p]
      getPrimeFactors(n / p).each {|i| primes.push i}
      return primes
    end
    i += 1
    p = getPrimeById(i)
  end

  # if i > square root of n, then n is prime
  return [n]

end

def getPrimeFactorsOld n

  if n.class.to_s != 'Fixnum' || n < 2
    raise 'Input must be positive integer greater than one'
  end

  i = 2

  while i <= (Math.sqrt n).floor
    if n % i == 0
      primes = [i]
      getPrimeFactors(n / i).each {|i| primes.push i}
      return primes
    end
    i = getNextPrime(i)
  end

  # if i > square root of n, then n is prime
  return [n]

end
