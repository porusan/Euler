def squareOfSum n

  sum = 0

  for i in 1..n
    sum += i
  end

  return sum ** 2

end

def squareOfSumMath n

  return ((n * (n + 1))/2) ** 2

end

def sumOfSquares n

  sum = 0

  for i in 1..n
    sum += i ** 2
  end

  return sum

end

def sumOfSquaresMath n

  return (n * (2 * n + 1) * (n + 1)) / 6

end
