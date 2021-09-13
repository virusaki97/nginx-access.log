#!/bin/bash

### Set initial time of file
LTIME=`stat -c %Z /var/log/nginx/access.log`

while true
do
   ATIME=`stat -c %Z /var/log/nginx/access.log`

   if [[ "$ATIME" != "$LTIME" ]]
   then
       echo "RUN COMMAND"
        ./script.sh
       LTIME=$ATIME
   fi
   sleep 1
done