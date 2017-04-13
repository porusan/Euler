def fib(n)
  if n > 2
    return fib(n-1) + fib(n-2)
  else
    return n
  end
end

@@saved_fibs = {}

# This method saves fibonacci results in a dictionary for faster accessing
def fib2(n)
  check = @@saved_fibs[n]
  if(check != nil)
    return check
  elsif n <= 2
    @@saved_fibs[n] = n
    return n
  else
    val = fib2(n-1) + fib2(n-2)
    @@saved_fibs[n] = val
    return val
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

