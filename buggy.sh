#!/bin/bash

bug="bettle"
echo "$bug"

set -x
bug = "ant"
set +x

echo "${bug:4}
