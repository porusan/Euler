require '../003/lib003.rb'
require './lib026.rb'

############################################################################
#
# The long way
#
# - We didn't need to calculate ALL prime factorizations
# as it could have been done on the fly
# - Written to minimize running multiplicative order calc by first
# working off totients for the range (since m.o and totient correlate).
# Later realized runtime was reduced by iterating from highest to lowest
#
# In the end, probabaly could have just cycled from highest to lowest,
# calculating the multiplicative order for each one. This would not
# have been a much higher run time because it's likely we'll find 
# the highest multiplicative order near the top of our range.
#
# In the end we now have some good functions for calculating totients
############################################################################

totients = {}
factorHash = {}

# create a hash from totient value to number
# also save the prime factorization for each number
for i in 2...1000

  factors = getPrimeFactors i

  # if n is NOT relatively prime to 10, then it has no decimal period
  # that is it "divides cleanly" i.e. 1/2 = .5 and 1/5 = .2
  modFactors = factors - [2, 5]

  if ! modFactors.empty?

    factorHash[i] = factors
    tot = phi_factors factors

    if totients[tot] == nil
      totients[tot] = [i]
    else
      totients[tot].push(i)
    end

  end

end

# sort highest totient to lowest, 
# and sort clashes from highest number to lowest
puts totients

foo = []
totients.keys.each {|x| foo.push x}

foo.sort!.reverse!

newTot = {}
foo.each {|x| newTot[x] = totients[x].reverse}

# NOTE: superfluous
# filter out totient results
# remove numbers whose prime factorizations inlude 2 or 5
# because while these numbers have different totients, their multiplicative order (of 10) 
# will be the same as numbers with the 2, 5 reduced prime factorizations
sameCoprimeFactorization = {}
for j in newTot.keys.reverse
  for k in newTot[j]
    if factorHash[k].length >= 1
      
      reducedFactors = factorHash[k] - [2, 5]
      if reducedFactors != factorHash[k]
        
        # save for later
        if sameCoprimeFactorization[reducedFactors] == nil
          sameCoprimeFactorization[reducedFactors] = [k]
        else
          sameCoprimeFactorization[reducedFactors].push k
        end
        # remove from our lists
        newTot[j].delete k

      elsif sameCoprimeFactorization[reducedFactors] != nil
        sameCoprimeFactorization[reducedFactors].push k
      end
      
    end
  end

end

# now iterate through and determine the number with the highest multiplicative order of 10
highest = 0
highestNumber = 0
for y in newTot.keys

  # i.e. if highest m.o. is greater than the totient we're looking at, then we've found it!
  # This is based on the fact that mulitplicative order 10 (n) is a divisor of the totient (n), or the same value
  if y < highest
    break
  end

  for z in newTot[y]

    o = multiplicativeOrderOf10 z

    if o > highest
      highest = o
      highestNumber = z
    end

  end

end

puts highestNumber