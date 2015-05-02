package main

import "fmt"
import "os"
import "strconv"

const NThreads = 503

var res = make(chan int)

type Receiver struct {
	Name    int
	Mailbox chan int
	Next    *Receiver
}

func NewReceiver(name int) *Receiver {
	r := &Receiver{Name: name, Mailbox: make(chan int)}
	return r
}

func (r *Receiver) Loop() {
	for {
		msg := <-r.Mailbox
		if msg == 0 {
			res <- r.Name
		} else {
			r.Next.Mailbox <- msg - 1
		}
	}
}

func main() {
	n := 1000
	if len(os.Args) > 1 {
		n, _ = strconv.Atoi(os.Args[1])
	}

	receivers := make([]*Receiver, NThreads)
	for i := 0; i < NThreads; i++ {
		receivers[i] = NewReceiver(i + 1)
	}
	for i := 0; i < NThreads-1; i++ {
		receivers[i].Next = receivers[i+1]
	}
	receivers[NThreads-1].Next = receivers[0]

	for i := 0; i < NThreads; i++ {
		go receivers[i].Loop()
	}

	receivers[0].Mailbox <- n
	fmt.Println(<-res)
}
