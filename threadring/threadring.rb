# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org
# contributed by Klaus Friedel
#

#require "thread"

THREAD_COUNT = 503

class Receiver
  @next
  @mailbox

  def initialize(name)
    @name = name
    @mailbox = Queue.new
  end

  def next=(n)
    @next = n
  end

  def put(msg)
    @mailbox.push(msg)
  end

  def messageloop
    while true
      hopsRemaining = @mailbox.pop
      if(hopsRemaining == 0)
        print @name, "\n"
        exit(0)
      end
      @next.put(hopsRemaining - 1)
    end
  end
end

##########
#  Main  #
##########
receivers = []
for i in 0..THREAD_COUNT-1
  receivers[i] = Receiver.new(i+1)
  if(i > 0)
    receivers[i-1].next = receivers[i]
  end
end
#close the ring
receivers[THREAD_COUNT-1].next = receivers[0]

# start the threads
for i in 0..THREAD_COUNT-1
  Thread.start(i){|k| receivers[k].messageloop}
end

receivers[0].put(ARGV[0].to_i)

sleep

