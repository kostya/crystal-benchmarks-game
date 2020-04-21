echo Crystal
cat 1.txt | ../xtime.rb ./bin_cr
echo Go
cat 1.txt | ../xtime.rb ./bin_go
echo Ruby
cat 1.txt | ../xtime.rb ruby knucleotide.rb
echo Topaz
cat 1.txt | ../xtime.rb topaz knucleotide.rb
