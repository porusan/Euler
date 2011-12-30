require '../003/lib003'

def getLeastGreatestMultiple coll

  factorColl = {}

  for i in coll

    factors = getPrimeFactors(i)
    
    fPrime = {}
    for f in factors
      if ! fPrime.include?(f)
        fPrime[f] = 0
      end
      fPrime[f] += 1
    end  
    
    for k in fPrime.each_key
      if (! factorColl.include?(k)) || factorColl[k] < fPrime[k]
        factorColl[k] = fPrime[k]
      end
    end

  end

  result = 1
  for k in factorColl.each_key
    result = result * (k ** factorColl[k])
  end

  return result

end
