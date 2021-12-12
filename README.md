# ParallelStringMatcher

C implementation Knuth Morris Pratt and Aho-Corasick algorithms

# Build
```sh
$ make
```
<p>ATTENZIONE: il progetto è stato elaborato su mac dunque sono state aggiunte le opzioni -lomp e -Xpreprocessor, rimuovere le opzioni se necessario.</p>

# Usage
```sh
$ ./bin/serial/kmp ./test/pattern/sample.txt ./test/packets/small.txt
$ ./bin/parallel/aho ./test/pattern/medium.txt ./test/packets/large.txt 4
```
<p>I programmi paralleli di default vengono eseguiti con 2 thread se non viene specificato il numero.</p>
