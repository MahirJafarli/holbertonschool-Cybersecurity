#!/bin/bash
printf "%d.%d.%d.%d - %d.%d.%d.%d" $(IFS=.; ip=($1); m=(); for i in 1 2 3 4; do m+=($(( $2 >= i*8 ? 255 : ($2 <= (i-1)*8 ? 0 : 256 - (1 << (8 - ($2 % 8))) ) ))); done; for i in {0..3}; do echo $((${ip[$i]} & ${m[$i]})); done; for i in {0..3}; do echo $((${ip[$i]} | (255 ^ ${m[$i]}))); done) | awk -F. -v OFS=. '{print $1,$2,$3,$4+1 " - " $5,$6,$7,$8-1}'
