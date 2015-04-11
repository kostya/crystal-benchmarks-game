def revcomp(seq)
  seq = seq.reverse.tr("wsatugcyrkmbdhvnATUGCYRKMBDHVN", "WSTAACGRYMKVHDBNTAACGRYMKVHDBN")
  stringlen = seq.length - 1
  0.step(stringlen, 60) { |x| puts seq[x...x + 60] }
end

seq = ""

STDIN.each_line do |line|
  if line.starts_with? '>'
    if !seq.empty?
      revcomp(seq)
      seq = ""
    end
    puts(line)
  else
    seq += line.chomp
  end
end
revcomp(seq)
