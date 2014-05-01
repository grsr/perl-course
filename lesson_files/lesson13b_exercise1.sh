perl -lane 'BEGIN{print "gene,length"} print join(",", lc $F[0], $F[3] - $F[2] + 1)' < lesson13_file3.txt
