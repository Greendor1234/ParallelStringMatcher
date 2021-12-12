out: out_serial out_parallel

out_parallel: kmp_parallel aho_parallel
out_serial:   kmp_serial   aho_serial

kmp_serial: src/kmp.c
	gcc -o ./bin/serial/kmp src/kmp.c lib/src/reader.c	
aho_serial: src/aho.c
	gcc -o ./bin/serial/aho src/aho.c lib/src/ahocorasick.c lib/src/aho_trie.c lib/src/aho_queue.c lib/src/reader.c	

kmp_parallel: src/kmp.c
	gcc -Xpreprocessor -fopenmp -lomp -o ./bin/parallel/kmp src/kmp.c lib/src/reader.c
aho_parallel: src/kmp.c
	gcc -Xpreprocessor -fopenmp -lomp -o ./bin/parallel/aho src/aho.c lib/src/ahocorasick.c lib/src/aho_trie.c lib/src/aho_queue.c lib/src/reader.c