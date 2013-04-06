require '../008/lib008.rb'

def findTriangleNumber n
  return (n * (n + 1)) / 2
end

# That is, all the divisors including 1 and n
def findNumberOfDivisors factors

  i = factors.length

  calcs = [1]

  while (i > 0)
    # calculate
    factors.combination(i).to_a.each { |a| calcs.push(productOfNDigits(a)) }
    i -= 1
  end

  return calcs.uniq.length

end

def calculateNumberOfDivisors factors

  factorCounts = {}

  factors.each do |f|

    if factorCounts.has_key?(f)
      factorCounts[f] += 1
    else
      factorCounts[f] = 1
    end

  end

  count = 1;
  factorCounts.values.each { |n| count *= (n + 1) }

  return count

end