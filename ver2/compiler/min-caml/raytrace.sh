#!/bin/bash

#$1== .sld file

#./min-caml test2/minrt_base
#./data/raytracer/minrt

#cp ./data/raytracer/minrt.s ../../simulator/test/minrt.s
cp ./minrt.s ../../simulator/simulator/test/minrt.s

cp ./data/raytracer/sld/$1.sld ../../simulator/simulator/input.txt

cd ../../simulator/simulator

make

./simulator ./test/minrt.s -l 1

if [ -e "result.bin" ]; then
  cat "result.bin"
fi
