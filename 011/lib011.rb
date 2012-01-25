def readArray file

  a = []
  
  File.open(file, 'r') do |f|
  
    f.each_line do |s|
      a.push( (s.chomp).split(' ').collect {|d| d.to_i} )
    end
  
  end
  
  return a

end

def transpose45 a

  t = []
  
  # iterate over columns in reverse order
  for c in (0...(a.length)).to_a.reverse
    temp = []
    for r in (0...(a.length - c))

      temp.push a[r][c]
      c += 1
    end
    
    t.push temp
  end
  
  # iterate over rows
  # on the inner iteration, start at the first column
  for r in (1...(a.length))
    temp = []
    for c in 0..((a.length - 1) - r)
      temp.push a[r][c]
      r += 1
    end
    
    t.push temp
  end
  
  return t

end

def transpose315 a

  t = []
  
  # iterate over rows, until hitting last one,
  # which gives us the diagonal
  for r in 0...(a.length)
    temp = []

    for c in 0..r
      temp.push a[r][c]
      r -= 1
    end
    
    t.push temp
  end
  
  # iterate over columns, 
  # always starting on the bottom row 
  for c in (1...(a.length))

    temp = []
    
    for r in (c...(a.length)).to_a.reverse
      temp.push a[r][c]
      c += 1
    end
    
    t.push temp
  end 

  return t

end

def transpose180 a

  t = []

  for r in 0...(a.length)
    
    for c in 0...((a[r]).length)
      if r == 0
        t.push []
      end
      
      t[c].push a[r][c]
      
    end
  end
  
  return t

end
