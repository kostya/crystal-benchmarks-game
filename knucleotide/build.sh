if [ ! -f 1.txt ]; then
	sh generate.sh
fi

#gcc -O3 -fomit-frame-pointer -o bin_c knucleotide.c
go build -o bin_go knucleotide.go
crystal build knucleotide.cr --release -o bin_cr
