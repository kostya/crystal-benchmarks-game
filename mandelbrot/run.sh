echo Crystal
../xtime.rb ./bin_cr 10000 > /dev/null
echo C
../xtime.rb ./bin_c 10000 > /dev/null
echo Ruby
../xtime.rb ruby mandelbrot.rb 10000 > /dev/null
echo Topaz
../xtime.rb topaz mandelbrot.rb 10000 > /dev/null
