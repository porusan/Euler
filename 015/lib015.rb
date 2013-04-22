def combinaton m, n

  if m < n
    raise "Error! 'm' must be larger than 'n'"
  end

  if m == n || n == 0
    return 1
  end

  if (m - n) > n
    n = m - n
  end

  num, den = 1 , 1

  ((n + 1)..m).each{|i| num *= i }
  (1..(m - n)).each{|j| den *= j}

  return num / den;

end