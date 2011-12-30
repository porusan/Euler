require '../003/lib003'

def getNthPrime n

  i, x = 1, 2
  
  while i < n
    x = getNextPrime x
    i += 1
  end
  
  return x

end
