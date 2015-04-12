# Crystal implementations for The Computer Language Benchmarks Game

Compared to C, and Ruby implementations from http://benchmarksgame.alioth.debian.org/ .

Running on Intel(R) Xeon(R) CPU E5504 @ 2.00GHz, Ubuntu 12.04.1 LTS

To run and build:
```
cd DIR
sh build.sh 
sh run.sh
```

### Binarytrees

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 7.85    | 32.6       |
| Crystal         | 11.63   | 107.6      |
| Ruby            | 54.08   | 115.5      |

### Fannkuchredux

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 5.65    | 0.3        |
| Crystal         | 9.26    | 0.9        |
| Ruby            | 222.33  | 7.0        |

### Fasta

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 4.59    | 0.3        |
| Crystal         | 5.91    | 1.3        |
| Ruby            | 148.51  | 144.5      |

### Knucleotide

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Go              | 3.86    | 31.6       |
| Crystal         | 6.90    | 25.1       |
| Ruby            | 42.58   | 47.7       |

### Mandelbrot

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 16.22   | 0.3        |
| Crystal         | 17.21   | 0.9        |
| Ruby            | 240.61  | 6.9        |

### Meteor

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.10    | 0.3        |
| Crystal         | 0.30    | 1.1        |

### NBody

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 3.52    | 0.3        |
| Crystal         | 4.16    | 0.9        |
| Ruby            | 157.62  | 7.0        |

### Pidigits

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.11    | 0.9        |
| Ruby            | 7.69    | 141.9      |
| Crystal         | 8.53    | 3.4        |

### Regexdna

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.84    | 10.4       |
| Ruby            | 3.45    | 16.6       |
| Crystal         | 42.40   | 52.7       |

### Revcomp

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.10    | 1.6        |
| Crystal         | 0.93    | 84.7       |
| Ruby            | 1.20    | 20.5       |

### Spectralnorm

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 11.23   | 0.4        |
| Crystal         | 11.62   | 1.6        |
| Ruby            | 359.02  | 7.4        |


## TODO
* theadring
* chameneosredux

## Versions
* `Crystal 0.6.1 [48461ba] (Wed Mar  4 23:06:07 UTC 2015)`
* `gcc (Ubuntu/Linaro 4.6.4-1ubuntu1~12.04) 4.6.4`
* `ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-linux]`
* `go version go1.3.1 linux/amd64`
