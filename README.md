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
| Java            | 0.59    | 282.2      |
| C               | 5.08    | 32.4       |
| Crystal         | 6.14    | 107.6      |
| Ruby            | 27.92   | 115.5      |

### Fannkuchredux

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.83    | 0.4        |
| Crystal         | 3.94    | 7.0        |
| Ruby            | 130.40  | 18.2       |

### Fasta

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 2.21    | 0.4        |
| Crystal         | 4.16    | 1.3        |
| Ruby            | 81.69   | 162.4      |

### Knucleotide

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Go              | 1.70    | 31.8       |
| Crystal         | 2.95    | 40.2       |
| Ruby            | 21.82   | 89.2       |

### Mandelbrot

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 10.13   | 0.4        |
| Crystal         | 10.48   | 1.2        |
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
| Crystal         | 1.74    | 1.3        |
| Ruby            | 91.01   | 7.3        |

### Pidigits

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.85    | 0.9        |
| Crystal         | 3.60    | 3.6        |
| Ruby            | 6.35    | 125.8      |

### Regexdna

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Ruby            | 1.96    | 17.9       |
| C               | 2.07    | 12.2       |
| Crystal         | 2.12    | 29.4       |

### Revcomp

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 0.23    | 3.6        |
| Ruby            | 2.19    | 91.1       |
| Crystal         | 2.72    | 427.4      |

### Spectralnorm

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| C               | 6.72    | 0.4        |
| Crystal         | 6.84    | 7.8        |
| Ruby            | 220.34  | 11.4       |

### Threadring

| Language        | Time,s  | Memory, Mb |
| --------------- | ------- | ---------- |
| Crystal         | 0.59    | 3.3        |
| Go              | 1.43    | 2.3        |
| Erlang          | 1.89    | 17.1       |
| Scala           | 6.42    | 1.5        |
| Ruby            | 41.73   | 30.0       |

## TODO
* chameneosredux

## Versions
* `Crystal 0.11.1 [58c69f3] (Mon Jan 25 15:45:26 UTC 2016)`
* `gcc (Ubuntu 4.8.2-19ubuntu1) 4.8.2`
* `ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux]`
* `go version go1.5.3 linux/amd64`
* `Erlang/OTP 18 [erts-7.2] [source] [64-bit] [smp:4:4] [async-threads:10] [kernel-poll:false]`
* `Scala code runner version 2.11.6 -- Copyright 2002-2013, LAMP/EPFL`
* `java version "1.8.0_45 Java(TM) SE Runtime Environment (build 1.8.0_45-b14) Java HotSpot(TM) 64-Bit Server VM (build 25.45-b02, mixed mode)`
