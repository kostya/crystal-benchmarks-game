/* The Computer Language Benchmarks Game
   http://benchmarksgame.alioth.debian.org/

   Contributed by Vincent Kraeutler
   updated for 2.8 by Rex Kerr
*/
import scala.actors.Actor
import scala.actors.Actor._

object threadring {

  class Thread(val label: Int) extends Actor {
    var next: Thread = null
    def act() { loop { react {
      case 0 => println(label); System.exit(0)
      case n: Int => next ! n - 1
    }}}
  }

  // create the threads
  val ring = Array.tabulate(503)(i => new Thread(i + 1))

  // hook them up
  ring.foreach(t => {
    t.next = ring( t.label % ring.length )
    t.start
  })

  def main(args : Array[String]) {
    val nHops = args(0).toInt
    ring(0) ! nHops
  }

}
