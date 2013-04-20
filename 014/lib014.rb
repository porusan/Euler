# prepopulate with base cases to prevent looping forever
@@collatzOrbits = {1 => 1, 2 => 2, 4 => 3}

def calculateCollatzOrbit n
  
  orbit = @@collatzOrbits[n]
  if orbit != nil
    return orbit
  end

  n1 = 0

  if n % 2 == 0
    n1 = n/2
  else
    n1 = (n * 3) + 1
  end

  orbit = @@collatzOrbits[n1]

  if(orbit != nil)
    @@collatzOrbits[n] = orbit + 1 
    return orbit + 1
  else
    orbit = calculateCollatzOrbit(n1) + 1
    @@collatzOrbits[n] = orbit 
    return orbit
  end

end
