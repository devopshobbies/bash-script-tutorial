#!/bin/bash
awk '{sum+=$4} END {print sum/NR}' numbers.txt
