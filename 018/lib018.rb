def calcTriangleMaxPath t

  if t.length == 1
    return t[0][0]
  end

  l = t.pop

  i = 0
  while i < l.length - 1
    
    t[t.length - 1][i] += l.slice(i, 2).max

    i += 1
  end 

  return calcTriangleMaxPath t

end