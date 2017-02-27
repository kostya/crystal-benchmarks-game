seq = IO::Memory.new

ilen = 0
STDIN.each_line do |line|
  ilen += line.size
  seq << line.chomp unless line.starts_with? '>'
end

seq = seq.to_s
clen = seq.size

[
  /agggtaaa|tttaccct/i,
  /[cgt]gggtaaa|tttaccc[acg]/i,
  /a[act]ggtaaa|tttacc[agt]t/i,
  /ag[act]gtaaa|tttac[agt]ct/i,
  /agg[act]taaa|ttta[agt]cct/i,
  /aggg[acg]aaa|ttt[cgt]ccct/i,
  /agggt[cgt]aa|tt[acg]accct/i,
  /agggta[cgt]a|t[acg]taccct/i,
  /agggtaa[cgt]|[acg]ttaccct/i,
].each { |f| puts "#{f.source} #{seq.scan(f).size}" }

hash = {
  "B" => "(c|g|t)",
  "D" => "(a|g|t)",
  "H" => "(a|c|t)",
  "K" => "(g|t)",
  "M" => "(a|c)",
  "N" => "(a|c|g|t)",
  "R" => "(a|g)",
  "S" => "(c|t)",
  "V" => "(a|c|g)",
  "W" => "(a|t)",
  "Y" => "(c|t)",
}

seq = seq.gsub(/B|D|H|K|M|N|R|S|V|W|Y/, hash)

puts
puts ilen
puts clen
puts seq.size
