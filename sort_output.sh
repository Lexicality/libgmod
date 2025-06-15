#!/bin/bash

entries=(output/*.json)
for file in "${entries[@]}"; do
    jq --sort-keys . "${file}" >"${file}.bak"
    mv "${file}.bak" "${file}"
done
