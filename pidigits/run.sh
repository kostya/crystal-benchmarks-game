echo Crystal
../xtime.rb ./bin_cr 20000 > /dev/null
echo C
../xtime.rb ./bin_c 20000 > /dev/null
echo Ruby
../xtime.rb ruby pidigits.rb 20000 > /dev/null
echo Topaz
../xtime.rb topaz pidigits.rb 20000 > /dev/null
