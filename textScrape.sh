#!/bin/bash


mapfile -t con < <(jq ".[] | .breed" catfacts.json)
touch res.txt

for tmp in "${con[@]}"; do 

	echo "$tmp" >> "res.txt"

done
