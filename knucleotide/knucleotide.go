/* The Computer Language Benchmarks Game
 * http://benchmarksgame.alioth.debian.org/
 *
 * contributed by The Go Authors.
 */

package main

import (
   "bufio"
   "bytes"
   "fmt"
   "io/ioutil"
   "os"
   "sort"
)

func count(data string, n int) map[string]int {
   counts := make(map[string]int)
   top := len(data) - n
   for i := 0; i <= top; i++ {
      s := data[i : i+n]
      counts[s]++
   }
   return counts
}

func countOne(data string, s string) int {
   return count(data, len(s))[s]
}

type kNuc struct {
   name  string
   count int
}

type kNucArray []kNuc

func (kn kNucArray) Len() int      { return len(kn) }
func (kn kNucArray) Swap(i, j int) { kn[i], kn[j] = kn[j], kn[i] }
func (kn kNucArray) Less(i, j int) bool {
   if kn[i].count == kn[j].count {
      return kn[i].name > kn[j].name // sort down
   }
   return kn[i].count > kn[j].count
}

func sortedArray(m map[string]int) kNucArray {
   kn := make(kNucArray, len(m))
   i := 0
   for k, v := range m {
      kn[i] = kNuc{k, v}
      i++
   }
   sort.Sort(kn)
   return kn
}

func printKnucs(a kNucArray) {
   sum := 0
   for _, kn := range a {
      sum += kn.count
   }
   for _, kn := range a {
      fmt.Printf("%s %.3f\n", kn.name, 100*float64(kn.count)/float64(sum))
   }
   fmt.Print("\n")
}

func main() {
   in := bufio.NewReader(os.Stdin)
   three := []byte(">THREE ")
   for {
      line, err := in.ReadSlice('\n')
      if err != nil {
         fmt.Fprintln(os.Stderr, "ReadLine err:", err)
         os.Exit(2)
      }
      if line[0] == '>' && bytes.Equal(line[0:len(three)], three) {
         break
      }
   }
   data, err := ioutil.ReadAll(in)
   if err != nil {
      fmt.Fprintln(os.Stderr, "ReadAll err:", err)
      os.Exit(2)
   }
   // delete the newlines and convert to upper case
   j := 0
   for i := 0; i < len(data); i++ {
      if data[i] != '\n' {
         data[j] = data[i] &^ ' ' // upper case
         j++
      }
   }
   str := string(data[0:j])

   var arr1, arr2 kNucArray
   countsdone := make(chan bool)
   go func() {
      arr1 = sortedArray(count(str, 1))
      countsdone <- true
   }()
   go func() {
      arr2 = sortedArray(count(str, 2))
      countsdone <- true
   }()

   interests := []string{"GGT", "GGTA", "GGTATT", "GGTATTTTAATT", "GGTATTTTAATTTATAGT"}
   results := make([]chan string, len(interests))
   for i, s := range interests {
      ch := make(chan string)
      results[i] = ch
      go func(result chan string, ss string) {
         result <- fmt.Sprintf("%d\t%s\n", countOne(str, ss), ss)
      }(ch, s)
   }
   <-countsdone
   <-countsdone
   printKnucs(arr1)
   printKnucs(arr2)
   for _, rc := range results {
      fmt.Print(<-rc)
   }

}
