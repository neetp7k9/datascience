#!/usr/bin/ruby
table = open("result.txt").readlines.map(&:to_f)
file = open("result.txt",'w')
a = 50

open("change").readlines.map(&:to_i).each do |i|
    table[i] += a 
end
table.each do |v|
    file.puts v
end
file.close
