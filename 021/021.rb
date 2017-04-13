require './lib021.rb'
require '../003/lib003.rb'

amicables = []

for i in 2...10000
  
  if !amicables.include?(i)

    sum = sumOfProperDivisors i
    if sum != 1 && sum != i
      r_sum = sumOfProperDivisors sum
      if i == r_sum
        amicables.push i
        amicables.push sum
      end
    end

  end

end

print amicables
puts 
puts amicables.reduce(0, :+)