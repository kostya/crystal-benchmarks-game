seq = STDIN.read
ilen = seq.length
seq = seq.split(/>.*?\n/).join
seq = seq.delete { |c| c == '\n' }
clen = seq.length

[
  /agggtaaa|tttaccct/i,
  /[cgt]gggtaaa|tttaccc[acg]/i,
  /a[act]ggtaaa|tttacc[agt]t/i,
  /ag[act]gtaaa|tttac[agt]ct/i,
  /agg[act]taaa|ttta[agt]cct/i,
  /aggg[acg]aaa|ttt[cgt]ccct/i,
  /agggt[cgt]aa|tt[acg]accct/i,
  /agggta[cgt]a|t[acg]taccct/i,
  /agggtaa[cgt]|[acg]ttaccct/i
].each {|f| puts "#{f.source} #{seq.scan(f).size}" }

{
'B' => "(c|g|t)", 'D' => "(a|g|t)", 'H' => "(a|c|t)", 'K' => "(g|t)",
'M' => "(a|c)", 'N' => "(a|c|g|t)", 'R' => "(a|g)", 'S' => "(c|t)",
'V' => "(a|c|g)", 'W' => "(a|t)", 'Y' => "(c|t)"
}.each { |f,r| seq = seq.gsub(f, r) }

puts
puts ilen
puts clen
puts seq.length
