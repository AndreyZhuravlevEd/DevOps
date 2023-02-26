#!/bin/bash

DIRECTORY=$1
COMPRESSION=$2
FILENAME=$3

mkdir $DIRECTORY
cd $DIRECTORY
tar -cf - "$DIRECTORY" 2>> error.log | $COMPERISSON | openssl enc -aes256 -out "$FILENAME" 2>> error.log
