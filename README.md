# Crystal implementations for The Computer Language Benchmarks Game

Compared to C, and Ruby implementations from http://benchmarksgame.alioth.debian.org/ .

Running on Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz (Ubuntu 14.04.1 LTS x86_64)

To run and build:
```
cd DIR
sh build.sh 
sh run.sh
```

### Binarytrees

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 5.08    | 32.4       |
| Crystal         | 6.02    | 107.6      |
| Ruby            | 27.92   | 115.5      |

### Fannkuchredux

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.83    | 0.4        |
| Crystal         | 4.21    | 1.2        |
| Ruby            | 130.40  | 18.2       |

### Fasta

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.21    | 0.4        |
| Crystal         | 4.08    | 1.4        |
| Ruby            | 81.69   | 162.4      |

### Knucleotide

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Go              | 1.70    | 31.8       |
| Crystal         | 2.76    | 28.5       |
| Ruby            | 21.82   | 89.2       |

### Mandelbrot

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 10.13   | 0.4        |
| Crystal         | 10.55   | 1.2        |
| Ruby            | 140.04  | 17.9       |

### Meteor

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.06    | 0.6        |
| Crystal         | 0.15    | 1.4        |

### NBody

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 1.59    | 0.4        |
| Crystal         | 1.74    | 1.2        |
| Ruby            | 91.01   | 7.3        |

### Pidigits

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.85    | 0.9        |
| Crystal         | 3.56    | 3.5        |
| Ruby            | 6.35    | 125.8      |

### Regexdna

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Ruby            | 1.96    | 17.9       |
| C               | 2.07    | 12.2       |
| Crystal         | 2.16    | 29.4       |

### Revcomp

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.23    | 3.6        |
| Ruby            | 2.19    | 91.1       |
| Crystal         | 2.66    | 464.8      |

### Spectralnorm

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 6.72    | 0.4        |
| Crystal         | 6.84    | 1.7        |
| Ruby            | 220.34  | 11.4       |

### Threadring

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Go              | 1.48    | 2.0        |
| Erlang          | 1.97    | 17.1       |
| Crystal         | 6.09    | 5.3        |
| Scala           | 6.42    | 1.5        |
| Ruby            | 41.73   | 30.0       |

## TODO
* chameneosredux

## Versions
* `Crystal 0.7.5 [2a33a87] (Thu Jul 30 17:24:52 UTC 2015)`
* `gcc (Ubuntu 4.8.2-19ubuntu1) 4.8.2`
* `ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux]`
* `go version go1.4 linux/amd64`
* `Erlang R16B03 (erts-5.10.4) [source] [64-bit] [smp:4:4] [async-threads:10] [kernel-poll:false]`
* `Scala code runner version 2.11.6 -- Copyright 2002-2013, LAMP/EPFL`
