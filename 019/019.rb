require './lib019.rb'

count = 0;
(1901..2000).each{|year| count += countSundaysInYear(year)}
puts count