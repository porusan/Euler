require './lib006'

n = 100

puts 'making calculations up to n=' + n.to_s
puts 'attempting via loops:'

start = Time.new
puts squareOfSum(n) - sumOfSquares(n)
finish = Time.new

puts 'it took ' + (finish - start).to_s + ' seconds'

puts ''
puts 'attempting via formulae:'

start = Time.new
puts squareOfSumMath(n) - sumOfSquaresMath(n)
finish = Time.new

puts 'it took ' + (finish - start).to_s + ' seconds'

