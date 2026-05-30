#!/bin/bash
IFS=.; printf "%08d.%08d.%08d.%08d\n" $(for o in $1; do bc <<< "obase=2; $o"; done)
