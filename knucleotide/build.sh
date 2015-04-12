if [ ! -f 1.txt ]; then
	sh generate.sh
fi

gcc -O3 -fomit-frame-pointer -o bin_c knucleotide.c
crystal build knucleotide.cr --release -o bin_cr
