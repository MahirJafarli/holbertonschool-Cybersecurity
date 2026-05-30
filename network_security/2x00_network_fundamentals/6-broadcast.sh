#!/bin/bash
printf "%d.%d.%d.%d" $(IFS=.; ip=($1); m=($2); for i in {0..3}; do echo $((${ip[$i]} | (255 ^ ${m[$i]}))); done)
