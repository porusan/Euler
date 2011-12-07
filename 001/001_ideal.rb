# Find sum of all numbers divisible by 3 and 5 under 1000

@limit = 999

# sum of items divisble by 5:
# (5 + 10 + 15 + ... + 995)
# (1 + 2 + 3 + ... + 199) * 5
# (199*200/2) * 5
###### NOTE: sum(1..x) == (x)(x+1)/2
def sumOfDivisibleBy(n)
  largest = @limit / n
  return largest * (largest + 1) * n / 2
end

puts sumOfDivisibleBy(3) + sumOfDivisibleBy(5) - sumOfDivisibleBy(15)
