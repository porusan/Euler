require './lib008'

file = 'data008.txt'
digitLength = 5

if ARGV.length == 0

  puts 'You can specify the file location in the first argument 
and the number of consecutive digits in the second'

elsif ARGV.length == 1

  file = ARGV[0]
    
elsif ARGV.length == 2

  file = ARGV[0]
  if ARGV[1].to_i > 0
    digitLength = ARGV[1].to_i
  end

end


str = ''
File.open(file, 'r') {|f| str = f.read}
a = splitStringOfDigits(str.chomp)

puts calcHighestNConDigits a, digitLength
