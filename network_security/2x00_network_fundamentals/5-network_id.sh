#!/bin/bash
printf "%d.%d.%d.%d" $(IFS=.; ip=($1); mask=($2); for i in {0..3}; do echo $((${ip[$i]} & ${mask[$i]})); done)
