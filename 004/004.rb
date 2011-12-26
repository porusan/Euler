require './lib004'

highest = 0
i = 999

while i >= 100
  j = i

  while j >= 100
    p = i*j

    if p < highest
      break
    end

    if isPalindrome(p)
      highest = p
    end

    j -= 1 
  end
  i -= 1
end

puts highest 
