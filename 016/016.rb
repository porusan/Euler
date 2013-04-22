# We are just going to take advantage of Ruby's built-in large-number overflow safety

result = 0

(2**1000).to_s.split(//).collect{|s| s.to_i}.each{|i| result += i}

puts result