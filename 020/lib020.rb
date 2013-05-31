def factorial n

  if n == 0
    return 1
  end

  return n * factorial(n - 1)

end

def sumOfDigits n

  result = 0
  n.to_s.split(//).collect{|s| s.to_i}.each{|i| result += i}

  return result

end
