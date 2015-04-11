# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org

# transliterated from Mario Pernici's Python program
# contributed by Rick Branson
# optimized by Aaron Tavistock

N = (ARGV[0] || 100).to_i

i = 0
k = 0
ns = 0
a = 0
t = 0
u = 0
k1 = 1
n = 1
d = 1

while(true) do
  k += 1
  t = n<<1
  n *= k
  k1 += 2
  a = (a + t) * k1
  d *= k1
  if a >= n
    t,u = (n * 3 + a).divmod(d)
    u += n
    if d > u
      ns = ns * 10 + t
      i += 1
      if i % 10 == 0
        print "%010d\t:%d\n" % [ns, i]
        ns = 0
      end
      break if i >= N

      a = (a - (d * t)) * 10
      n *= 10
    end
  end
end
