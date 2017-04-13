require './lib023.rb'
require '../003/lib003.rb'
require '../015/lib015.rb'

collection = []

## This approach had too long of a runtime to be feasible
# for n in 1..3000
#   if ! isSumOfTwoAbundantNumbers n
#     collection.push n
#   end
# end

limit = 28124

for n in 2...limit
  if isAbundant n
    collection.push n
  end
end

puts 'number of abundants: ' + collection.length.to_s
puts 'total number of possible combos: ' + ((combinaton collection.length, 2) + collection.length).to_s

sums = []
for i in 0...collection.length

  for j in i...collection.length
    sum = collection[i] + collection[j]
    if sum < limit
      sums.push sum
    end
  end

end

sums.uniq!
puts 'numbers that are sums of two abundants: ' + sums.length.to_s

notSums = (1...limit).to_a - sums
puts 'sum of numbers that are NOT the sum of two abundants: ' + notSums.reduce(0, :+).to_s
