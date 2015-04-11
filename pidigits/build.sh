gcc -O3 -fomit-frame-pointer -funroll-loops pidigits.c -o bin_c -lgmp
crystal build pidigits.cr --release -o bin_cr
