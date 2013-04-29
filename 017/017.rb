regularLengths =  {1 => 'one'.length, 2 => 'two'.length, 3 => 'three'.length, 4 => 'four'.length, 5 => 'five'.length, 
                  6 => 'six'.length, 7 => 'seven'.length, 8 => 'eight'.length, 9 => 'nine'.length}
teenLengths =     {11 => 'eleven'.length, 12 => 'twelve'.length, 13 => 'thirteen'.length, 14 => 'fourteen'.length, 15 => 'fifteen'.length, 
                  16 => 'sixteen'.length, 17 => 'seventeen'.length, 18 => 'eighteen'.length, 19 => 'nineteen'.length }
decadeLengths =   {20 => 'twenty'.length, 30 => 'thirty'.length, 40 => 'forty'.length, 50 => 'fifty'.length, 
                  60 => 'sixty'.length, 70 => 'seventy'.length, 80 => 'eighty'.length, 90 => 'ninety'.length }
tenLength = 'ten'.length
hundredLength = 'hundred'.length

# don't forget in British usage, we put an "and" between the hundreds and tens "one hundred and twenty-five"
count = 0

for i in (1...1000)

  o = i % 10
  t = (i % 100) / 10
  h = i / 100

  # count ones - teens are special case
  if t == 1
    if o == 0
      count += tenLength
    else
      count += teenLengths["#{t}#{o}".to_i]      
    end
  else
    if o != 0
      count += regularLengths[o]
    end
    if t > 0
      count += decadeLengths[t * 10]
    end
  end

  # hundreds and british-usage "and"
  if h > 0
    if o > 0 or t > 0
      count += 'and'.length
    end
    
    count += hundredLength
    count += regularLengths[h]
  end
end

count += 'onethousand'.length

puts count