#!/bin/bash

NOW="$(date '+%Y-%m-%d')"
echo "$NOW"

for i in *.txt; do mv -- "$i" "${i%.txt}.$NOW"; done


