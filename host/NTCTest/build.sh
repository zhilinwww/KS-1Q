#!/bin/sh

octave --eval "NTC2('thru',10000,3478.0);"
octave --eval "NTC2('smd',10000,3800.0);"

gcc -o ntctest -std=c99 -g ntc.c ntctest.c
chmod +x ./ntctest
./ntctest
