echo Crystal
../xtime.rb ./bin_cr 15000000 > /dev/null
echo C
../xtime.rb ./bin_c 15000000 > /dev/null
echo Ruby
../xtime.rb ruby fasta.rb 15000000 > /dev/null
