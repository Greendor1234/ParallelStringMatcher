# ParallelStringMatcher

C implementation Knuth Morris Pratt and Aho-Corasick algorithms

# Build
```sh
$ make
```
<p>WARNING: the project was developed on mac so the were added -lomp and -Xpreprocessor options, remove them (in makefile) if necessary.</p>

# Usage
```sh
$ ./bin/serial/kmp ./test/pattern/sample.txt ./test/packets/small.txt
$ ./bin/parallel/aho ./test/pattern/medium.txt ./test/packets/large.txt 4
```
<p>By default parallel programs run with 2 threads if not specified.</p>

# Demo
```sh
$ bash run/sample.sh
$ bash run/medium.sh
$ bash run/large.sh
```
