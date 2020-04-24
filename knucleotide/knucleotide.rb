# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org
#
# contributed by jose fco. gonzalez
# modified by Sokolov Yura

seq = ""

def frecuency(seq, length)
    n = seq.length - length + 1
    table = Hash.new(0)
    (0 ... length).each do |f|
        (f ... n).step(length) do |i|
            table[seq[i, length]] += 1
        end
    end
    [n, table]
end

def sort_by_freq(seq, length)
    n, table = frecuency(seq, length)
    table.to_a.sort{|a, b| b[1] <=> a[1]}.each do |v|
        puts "%s %.3f" % [v[0].upcase, ((v[1]*100).to_f / n)]
    end
    puts
end

def find_seq(seq, s)
    n, table = frecuency(seq, s.length)
    puts "#{table[s].to_s}\t#{s.upcase}"
end

start = false
STDIN.each_line do |line|
  start = true if line.start_with?(">THREE")

  if start && !line.start_with?(">")
    seq << line.chomp
  end
end

puts seq.length
(1..2).each { |i| sort_by_freq(seq, i) }
%w(ggt ggta ggtatt ggtattttaatt ggtattttaatttatagt).each { |s| find_seq(seq, s) }
