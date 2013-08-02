require './lib025'

n1 = 1
n2 = 2
i = 4
fib = 3
keepGoing = true

while keepGoing

  n1 = n2
  n2 = fib

  fib = n1 + n2

  i += 1

  if numberOfDigits(fib) >= 1000
    keepGoing = false
  end
end

puts i