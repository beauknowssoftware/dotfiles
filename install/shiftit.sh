#!/usr/bin/env bash

curl -L https://github.com/fikovnik/ShiftIt/releases/download/version-1.6.3/ShiftIt-1.6.3.zip > shiftit.zip && unzip shiftit.zip
mv ShiftIt.app /Applications
rm shiftit.zip
