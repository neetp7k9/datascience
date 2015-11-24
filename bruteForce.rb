#!/usr/bin/ruby
file_table = open("change").readlines.map(&:to_i)
unless ARGV[0]
  door = 0
else
  door = ARGV[0].to_i
end
unless ARGV[1]
  window = 9643
else
  window = ARGV[1].to_i
end
file_table.each_with_index do  |index,i|
    next if i < door
    return if i > window
    puts door
    pid = fork do
        puts "Forking #{i}."
        exec "curl -u 'dslecture:d@tsc/15' -F stname=DSSG -F upfile=@./bruteForce/"+index.to_s+".txt http://www.nlab.ci.i.u-tokyo.ac.jp/~nakayama/ds15/report1/upload.php | grep -o ' [0-9]*.[0-9]* ' > ./bruteForce/score_"+index.to_s
    end

    Process.wait
    puts "#{i} child exited, pid = #{pid}"
end
