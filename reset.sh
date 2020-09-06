#!/bin/sh
list=(Package.resolved Package.swift README.md Sources Tests .build)
for ii in ${list[@]}; do
echo "Removing $ii"
rm -rf "${ii}"
done
