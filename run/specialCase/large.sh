pattern="./test/patterns/specialCase/large.txt"
packets="./test/packets/large.txt"

echo "SERIAL PROGRAMS"

./bin/serial/kmp $pattern $packets
./bin/serial/aho $pattern $packets

echo "----------------"
echo "++++++++++++++++"
echo "----------------"


echo "PARALLEL PROGRAMS - 2 THREADS"

./bin/parallel/kmp $pattern $packets 2
./bin/parallel/aho $pattern $packets 2

echo "----------------"
echo "++++++++++++++++"
echo "----------------"

echo "PARALLEL PROGRAMS - 4 THREADS"

./bin/parallel/kmp $pattern $packets 4
./bin/parallel/aho $pattern $packets 4

echo "----------------"
echo "++++++++++++++++"
echo "----------------"

echo "PARALLEL PROGRAMS - 8 THREADS"

./bin/parallel/kmp $pattern $packets 8
./bin/parallel/aho $pattern $packets 8