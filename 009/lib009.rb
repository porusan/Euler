def isPythTriplet(a)

  if ((a[0] ** 2) + (a[1] ** 2) == a[2] ** 2)
    return true
  else
    return false
  end

end

def genPythTriplet(m, n)

  a, b, c = 0, 0, 0
  
  a = (m ** 2) - (n ** 2)
  b = 2 * m * n
  c = (m ** 2) + (n ** 2)
  
  if b < a
    a, b = b, a 
  end

  return [a, b, c]

end
