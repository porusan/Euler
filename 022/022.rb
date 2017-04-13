require './lib022.rb'

filename = './names.txt'

list = []

File.open(filename, 'r') {|f| 
  name = []

  while b = f.getbyte
    if b == 34
      if !name.empty?
        list.push name
        name = []
      end
    elsif b == 44
      # do nothing
    elsif b >= 65 && b <= 90
      name.push b
    end
  end
}

sorted = sortArrayOfArrays list

answer = 0 
sorted.each_index { |i|
  answer += getValueOfName(sorted[i]) * (i + 1)
}

puts answer