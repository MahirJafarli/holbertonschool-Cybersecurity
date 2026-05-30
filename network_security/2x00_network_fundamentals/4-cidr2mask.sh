#!/bin/bash
printf "%d.%d.%d.%d\n" $(for i in 1 2 3 4; do echo $(( $1 >= i*8 ? 255 : ($1 <= (i-1)*8 ? 0 : 256 - (1 << (8 - ($1 % 8))) ) )); done)
