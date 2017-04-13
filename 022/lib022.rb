def sortArrayOfArrays array

  retVal = array.sort{ |a,b|

    i = 0
    myType = 0
    while i < a.length && i < b.length
      if a[i] == b[i]
        i += 1
      else
        myType = 1
        break
      end
    end

    if myType == 0
      a.length <=> b.length
    elsif myType == 1
      a[i] <=> b[i]
    end
  }

  return retVal

end

def getValueOfName name

  # inject was having some trouble when trying to sutract
  # a constant value while adding to the sum - it was "off by one",
  # so a two-step approach makea more sense to me here.
  
  amount = name.reduce(0, :+)
  return amount - 64 * name.length

end