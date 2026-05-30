#!/bin/bash
ip route show default | awk '/via/ {printf "%s", $3}'
