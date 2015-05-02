crystal build threadring.cr --release -o bin_cr
erlc +native +"{hipe, [o3]}" threadring.erl
scalac -optimize threadring.scala
go build -o bin_go threadring.go
