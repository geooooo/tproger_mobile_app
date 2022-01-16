#!/bin/bash

if [[ "$1" == "-f" ]]; then
    rm -rf .dart_tool
    flutter pub get
    flutter pub run build_runner build --delete-conflicting-outputs
else
    flutter pub run build_runner build
fi