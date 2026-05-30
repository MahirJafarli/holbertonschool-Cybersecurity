#!/bin/bash
printf "%d.%d.%d.%d\n" $(($((0xffffffff << (32 - $1))) >> 24 & 0xff)) $(($((0xffffffff << (32 - $1))) >> 16 & 0xff)) $(($((0xffffffff << (32 - $1))) >> 8 & 0xff)) $(($((0xffffffff << (32 - $1))) & 0xff))
