#! /bin/bash

cat allMSN.csv | cut -d, -f3,4,5 | sort -n -k 3 -t , | tail -1 > farthest.txt
