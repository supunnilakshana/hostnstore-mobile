#!/bin/bash
# generate classes by running the ferry code generator
echo "Generating classes...😉"
fvm flutter pub run build_runner build --delete-conflicting-outputs
echo "task completed! ✌"