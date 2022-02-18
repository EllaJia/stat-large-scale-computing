#! /bin/bash

cat out1.csv out2.csv out3.csv | sort -n | head -1 | cut -d, -f1 > out
