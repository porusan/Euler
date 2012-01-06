def splitStringOfDigits s

  return s.split(//).collect {|i| i.to_i}

end

def productOfNDigits a

  product = 1
  a.each {|n| product *= n}
  return product

end

def calcHighestNConDigits a, n

  startInd = 0
  endInd = n - 1
  highest = 0

  if (endInd >= a.length)
    return -1
  end

  itr = 0
  while endInd <= a.length - 1
    itr += 1
    s = a.slice(startInd..endInd)

    if ! s.include? 0
    
      calc = productOfNDigits s

      if calc > highest
        highest = calc
      end
      
      startInd += 1
      endInd += 1
    
    else
      # skip the slices that contain 0
      index = s.index 0
      
      startInd += index + 1
      endInd += index + 1 
      
      # check boundaries of array
      if endInd >= a.length
        break
      end
    end
  end
  
  return highest

end
