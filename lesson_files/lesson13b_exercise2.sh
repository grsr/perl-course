perl -lane 'for $n (split "", $F[0]) {$h{$n}++} END{for $k (keys %h) {print "$k $h{$k}"}}' < lesson13_file4.txt
