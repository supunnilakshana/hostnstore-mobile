#!/bin/bash
# generate classes by running the ferry code generator
echo "Generating language files...😉"
python ../tools/lang_tool/config_lang.py
flutter pub get
echo "task completed! ✌"


