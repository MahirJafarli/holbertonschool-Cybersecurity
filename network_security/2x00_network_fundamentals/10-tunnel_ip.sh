#!/bin/bash
ip addr show tun0 2>/dev/null | awk '/inet / {split($2, a, "/"); printf "%s", a[1]}'
