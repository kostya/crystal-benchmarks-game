if [ ! -f 1.txt ]; then
	sh generate.sh
fi

gcc -O3 -fomit-frame-pointer -o bin_c revcomp.c
crystal build revcomp.cr --release -o bin_cr
