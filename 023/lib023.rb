require '../021/lib021.rb'

@@listOfAbundants = [12]

## This approach had too long of a runtime to be feasible
def isSumOfTwoAbundantNumbers n

  # we'll cycle over all abundant numbers less than n / 2
  if n / 2 < @@listOfAbundants.first
    return false
  end

  if @@listOfAbundants.last < n / 2
    for i in ((@@listOfAbundants.last + 1)..n)
      if isAbundant i
        @@listOfAbundants.push i
      end
    end
  end

  for a in @@listOfAbundants
    if a > n /2 
      return false
    end
    
    pair = n - a
    if @@listOfAbundants.include? pair
      return true
    end
  end

end

def isAbundant n
  return sumOfProperDivisors(n) > n
end