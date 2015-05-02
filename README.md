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
| Crystal         | 11.34   | 107.7      |
| Ruby            | 54.08   | 115.5      |

### Fannkuchredux

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 5.65    | 0.3        |
| Crystal         | 10.26   | 1.2        |
| Ruby            | 222.33  | 7.0        |

### Fasta

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 4.59    | 0.3        |
| Crystal         | 5.91    | 1.4        |
| Ruby            | 148.51  | 144.5      |

### Knucleotide

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Go              | 3.86    | 31.6       |
| Crystal         | 6.40    | 29.1       |
| Ruby            | 42.58   | 47.7       |

### Mandelbrot

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 16.22   | 0.3        |
| Crystal         | 17.32   | 1.1        |
| Ruby            | 240.61  | 6.9        |

### Meteor

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.10    | 0.3        |
| Crystal         | 0.27    | 1.2        |

### NBody

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 3.52    | 0.3        |
| Crystal         | 4.15    | 1.1        |
| Ruby            | 157.62  | 7.0        |

### Pidigits

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.11    | 0.9        |
| Ruby            | 7.69    | 141.9      |
| Crystal         | 9.56    | 4.3        |

### Regexdna

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.84    | 10.4       |
| Ruby            | 3.45    | 16.6       |
| Crystal         | 6.78    | 54.1       |

### Revcomp

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.42    | 37.0       |
| Crystal         | 3.47    | 520.9      |
| Ruby            | 4.60    | 74.2       |

### Spectralnorm

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 11.23   | 0.4        |
| Crystal         | 11.66   | 1.8        |
| Ruby            | 359.02  | 7.4        |

### Threadring

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Go              | 1.58    | 3.1        |
| Erlang          | 2.40    | 9.8        |
| Crystal         | 5.16    | 7.3        |
| Scala           | 20.08   | 1.6        |
| Ruby            | 47.97   | 19.0       |

## TODO
* chameneosredux

## Versions
* `Crystal 0.7.1 [86d387c] (Fri May  1 01:08:43 UTC 2015)`
* `gcc (Ubuntu/Linaro 4.6.4-1ubuntu1~12.04) 4.6.4`
* `ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-linux]`
* `go version go1.3.1 linux/amd64`
* `Erlang R14B04 (erts-5.8.5) [source] [64-bit] [smp:8:8] [rq:8] [async-threads:0] [kernel-poll:false]`
* `Scala code runner version 2.11.1 -- Copyright 2002-2013, LAMP/EPFL`
