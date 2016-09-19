THREAD_COUNT = 503

class Receiver
  def initialize(@name : Int32)
    @mailbox = Channel(Int32).new
  end

  def next=(n : Receiver)
    @next = n
  end

  def put(msg)
    @mailbox.send(msg)
  end

  def messageloop
    while true
      msg = @mailbox.receive
      if msg == 0
        RES.send(@name)
      elsif nxt = @next
        nxt.put(msg - 1)
      end
    end
  end
end

RES = Channel(Int32).new

receivers = Array.new(THREAD_COUNT) { |i| Receiver.new(i + 1) }
(0...THREAD_COUNT - 1).each { |i| receivers[i].next = receivers[i + 1] }
receivers[THREAD_COUNT - 1].next = receivers[0]

THREAD_COUNT.times do |i|
  spawn { receivers[i].messageloop }
end

receivers[0].put((ARGV[0]? || 1000).to_i)
puts RES.receive
