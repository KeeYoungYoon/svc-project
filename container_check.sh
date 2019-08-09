#!/bin/sh
if [ -z $(docker ps -q) ]; then
 echo '0'
else
 echo '1'
fi
