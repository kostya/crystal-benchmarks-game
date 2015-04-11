# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org
#
# contributed by jose fco. gonzalez
# optimized & parallelized by Rick Branson
# optimized for ruby2 by Aaron Tavistock
# optimized more by Utkarsh Kukreti

MATCHERS = [
  /agggtaaa|tttaccct/,
  /[cgt]gggtaaa|tttaccc[acg]/,
  /a[act]ggtaaa|tttacc[agt]t/,
  /ag[act]gtaaa|tttac[agt]ct/,
  /agg[act]taaa|ttta[agt]cct/,
  /aggg[acg]aaa|ttt[cgt]ccct/,
  /agggt[cgt]aa|tt[acg]accct/,
  /agggta[cgt]a|t[acg]taccct/,
  /agggtaa[cgt]|[acg]ttaccct/
]

seq = STDIN.read
ilen = seq.size

seq.gsub!(/>.*\n|\n/,"")
clen = seq.length

MATCHERS.each do |m|
  puts "#{m.source} #{seq.scan(m).size}"
end

hash = {
  'B' => '(c|g|t)',
  'D' => '(a|g|t)',
  'H' => '(a|c|t)',
  'K' => '(g|t)',
  'M' => '(a|c)',
  'N' => '(a|c|g|t)',
  'R' => '(a|g)',
  'S' => '(c|t)',
  'V' => '(a|c|g)',
  'W' => '(a|t)',
  'Y' => '(c|t)'
}

seq.gsub!(/B|D|H|K|M|N|R|S|V|W|Y/, hash)

puts
puts ilen
puts clen

puts seq.length
