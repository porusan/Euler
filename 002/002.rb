def fib(n)
  if n > 2
    return n = fib(n-1) + fib(n-2)
  else
    return n
  end
end

def calcEvenFibUpToValue(n)
  i = 0
  f = 0
  sum = 0

  while f < n
    if f % 2 == 0
      sum += f
    end
    i += 1
    f = fib i
  end
  
  return sum
end
