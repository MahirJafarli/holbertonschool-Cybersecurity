#!/bin/bash
IFS=.; printf "%d.%d.%d.%d\n" $(for i in {1..4}; do bc <<< "ibase=2; $([ $1 -ge $((i*8)) ] && echo 11111111 || ([ $1 -le $(((i-1)*8)) ] && echo 00000000 || printf '1%.0s' $(seq 1 $(($1 % 8))); printf '0%.0s' $(seq 1 $((8 - ($1 % 8)))); echo))"); done)
