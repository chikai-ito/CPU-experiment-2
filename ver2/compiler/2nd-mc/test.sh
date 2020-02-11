#!/bin/bash

INPUT=FALSE

while :
do
    case $1 in
	-i) INPUT=TRUE
	     shift
	     ;;
	--) shift
	    break
	    ;;
	*) break
	   ;;
    esac
done

if [ -e result.ppm ]; then
    rm result.ppm
fi

if [ "$INPUT" = "TRUE" ]; then
    cat ./input.txt > ../../simulator/newsimulator/input.txt
fi

cp ./test/$1.s ../../simulator/newsimulator/test/$1.s

cd ../../simulator/newsimulator
if [ -e "result.bin "]; then    
    rm ./result.bin
fi

make

./simulator ./test/$1.s $2 $3

if [ -e "result.bin" ]; then
    cp ./result.bin ../../compiler/2nd-mc/result.txt
fi
