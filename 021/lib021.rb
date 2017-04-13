require '../003/lib003.rb'

def getProperDivisorsFromPrimeFactors factors

  combinationList = getAllCombinations factors
  
  divisors = []
  combinationList.each { |c| divisors.push(c.reduce(1, :*)) }

  # last item is always the actual number (of whose factors we have a list), which is not a proper divisor
  divisors.pop
  # if there are non-unique prime factors, there will be duplicates in our list of divisors
  divisors.uniq!

  return divisors
end

def sumOfProperDivisors n

  return getProperDivisorsFromPrimeFactors(getPrimeFactors(n)).reduce(0, :+)

end

# the total number of all combinations is 2^n, including the empty set and all items
def getAllCombinations items

  count = items.length

  allCombos = []

  i = 0
  while(i < 2 ** count)
    
    # /identifier/ is a base 2 rep of i, in string form so we can easily manipulate it
    identifier = i.to_s(2).rjust(count, '0')

    thisCombo = []
    j = 0
    while j < count
      if identifier[j] == '1'
        thisCombo.push items[j] 
      end
      j += 1
    end

    allCombos.push thisCombo
    i += 1
  end

  return allCombos
end