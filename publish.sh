#!/bin/bash

# Read the version from the podspec file
VERSION=$(sed -n "s/.*s.version *= *'\(.*\)'/\1/p" SwiftAudioPro.podspec)

# Check if the version was found
if [ -z "$VERSION" ]; then
  echo "Version not found in SwiftAudioPro.podspec"
  exit 1
fi

echo "Version found: $VERSION"

# Create a git tag
git tag $VERSION

# Push the tag to the remote repository
git push origin $VERSION

# Publish the pod to CocoaPods
pod trunk push SwiftAudioPro.podspec
