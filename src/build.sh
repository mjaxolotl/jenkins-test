#!/bin/bash
DATE=$(date +'%M-%H-%S')
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cd ..

mkdir -p bin 
mkdir -p log

head -c $RANDOM </dev/urandom	> bin/program-$DATE.jar
echo "BUILD $DATE is OK"	> log/log-$DATE.log
