#!/bin/bash
tracepath -n "$1" | awk '/:/ {h=$1} END {printf "%s", h}'
