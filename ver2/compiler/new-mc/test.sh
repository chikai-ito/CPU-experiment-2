#!/bin/bash

cp ./$1.s ../../simulator/simulator/test/$1.s

cat ./input.txt > ../../simulator/simulator/input.txt

cd ../../simulator/simulator
rm ./result.bin

make

./simulator ./test/$1.s $2 $3

cp ./result.bin ../../compiler/min-caml/result.txt
