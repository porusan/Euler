require './lib009.rb'

m = 2 
n = 1
a = [0, 0, 0]
i = 0

while a[0] + a[1] + a[2] != 1000

  i += 1

  if a[0] >= 1000 && a[1] >= 1000
    a = [0, 0, 0]
    break
  end

  if a[2] > 1000
    n += 1
    m = n
  end
  
  m += 1
  a = genPythTriplet(m, n)

end

if a == [0, 0, 0]
  puts 'could not find any triplet given the current algorithm'
else
  puts 'on the iteration number ' + i.to_s
  puts a
  puts 'product is: ' + (a[0] * a[1] * a[2]).to_s
end
