#!/bin/bash
echo "Insert url to download"
link=$1
extension=$2
wget -O test.png ${link} | grep -R -I ".${extension}" ./week3

