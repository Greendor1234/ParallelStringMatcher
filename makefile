out: out_serial out_parallel

out_parallel: kmp_parallel aho_parallel
out_serial:   kmp_serial   aho_serial

kmp_serial: serial/kmp.c
	gcc -o ./bin/serial/kmp	serial/kmp.c lib/src/reader.c
	
aho_serial: serial/aho.c
	gcc -o ./bin/serial/aho serial/aho.c lib/src/ahocorasick.c lib/src/aho_trie.c lib/src/aho_queue.c lib/src/reader.c
	
kmp_parallel: parallel/kmp.c
	gcc -Xpreprocessor -fopenmp -lomp -o ./bin/parallel/kmp parallel/kmp.c lib/src/reader.c
	
aho_parallel: parallel/kmp.c
	gcc -Xpreprocessor -fopenmp -lomp -o ./bin/parallel/aho parallel/aho.c lib/src/ahocorasick.c lib/src/aho_trie.c lib/src/aho_queue.c lib/src/reader.c