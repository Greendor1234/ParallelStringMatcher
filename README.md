# ParallelStringMatcher

C implementation Knuth Morris Pratt and Aho-Corasick algorithms

# Build
```sh
$ make
```
**WARNING** : the project was developed on mac so the were added _-lomp_ and _-Xpreprocessor_ options, remove them (in makefile) if necessary.

# Usage
```sh
$ ./bin/serial/kmp ./test/pattern/sample.txt ./test/packets/small.txt
$ ./bin/parallel/aho ./test/pattern/medium.txt ./test/packets/large.txt 4
```
By default parallel programs run with 2 threads if not specified.

# Demo
```sh
$ bash run/sample.sh
$ bash run/medium.sh
$ bash run/large.sh
```

# Structure
- **bin**
  - **serial** : contains serial algos binary.
  - **parallel** : contains parallel algos binary.
- **docs** : contains files for report.
- **lib** : contains common functions.
  - **include** : contains header files
  - **src** : contains source files
- **parallel** : contains parallel algos source files 
- **serial** : contains serial algos source files 
- **run** : contains demo files
- **test** : contains input file
  - **packets** : contains file in which find the patterns
  - **patterns** : contains patterns and the pattern's generator.


