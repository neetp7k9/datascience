#!/usr/bin/ruby
table = open("result.txt").readlines.map(&:to_f)
file_table = open("change").readlines.map(&:to_i)
filepath = "./bruteForce/"
a = 50
# stage size
file_table.each do  |file_index|
    file = open(filepath+file_index.to_s+".txt",'w') 
    table.each_with_index do |value,table_index|
        if file_index == table_index
            file.puts value+a
        else
            file.puts value
        end
    end
end
