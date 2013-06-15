require 'Date'

@@monthDays = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30}

def simpleIsLeapYear year

  if year % 4 == 0 

    if year % 100 == 0
      if year % 400 == 0
        return true
      end
      
      return false
    end

    return true
  end

  return false

end

def countSundaysInYear year,

  totalDays = 365

  if simpleIsLeapYear(year)
    @@monthDays[2] = 29
    totalDays = 366
  else
    @@monthDays[2] = 28
  end

  # collect Sundays in one-based days of the year
  # determine "starting" Sunday by subtracting the zero-based day of the week
  sundayDays = []
  d = 1 - Date.new(year, 1, 1).wday
  while d < totalDays
    if d > 0
      sundayDays.push d
    end
    d += 7
  end

  # collect first of the months in one-based days of the year
  # TODO: this could be static
  firstDays = [1]
  for k in @@monthDays.keys
    # puts k
    firstDays.push(firstDays[firstDays.length - 1] + @@monthDays[k])
  end

  # return the intersection
  return (sundayDays & firstDays).count

end