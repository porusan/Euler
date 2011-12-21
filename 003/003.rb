def isPrime n
  # hardcode lowest prime (starting point)
  i = 2
  # if there are no factors when reaching the closest integer less than
  # or equal to the square root, then that number is prime
  max = (Math.sqrt n).floor
  while i <= max
    if n % i == 0
      return false
    end
    i += 1
  end
  return true
end

def getNextPrime n
  i = n +1
  
  while ! isPrime(i) 
    i += 1
  end
  
  return i
end

def getPrimeFactors n

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
