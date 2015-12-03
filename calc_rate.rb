#!/usr/bin/ruby
file_table = open("change").readlines.map(&:to_i)
filepath = "./bruteForce/"

score = ARGV[0].to_f
puts "default" +  score.to_s
f = open("change",'w')
file_table.each do  |index|
    new_score = open("./bruteForce/score_"+index.to_s).read().to_f
    puts new_score
    f.puts index if new_score-score < 0
end
