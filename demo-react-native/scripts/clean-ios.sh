#!/bin/bash

cd "$(dirname "$0")/.."

echo "Cleaning iOS build..."

# Remove build artifacts
cd ios
rm -rf build/
rm -rf Pods/
rm -rf Podfile.lock
rm -rf ~/Library/Developer/Xcode/DerivedData/example-*

# Reinstall pods
bundle install
bundle exec pod install

echo "iOS cleanup complete!" 