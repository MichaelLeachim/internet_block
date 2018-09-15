#!/bin/sh

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@	 
# @ Copyright (c) Michael Leachim                                                      @
# @ You can find additional information regarding licensing of this work in LICENSE.md @
# @ You must not remove this notice, or any other, from this software.                 @
# @ All rights reserved.                                                               @
# @@@@@@ At 2018-15-09 15:18<mklimoff222@gmail.com> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

## check whether $HOSTS is writeable
if ! [ -w $HOSTS ]; then
    echo "File $HOSTS ${red} is not ${reset} writeable" ;
    exit 1;
fi

## write to $HOSTS file
echo "Writing $CONTENT_FILE to $HOSTS"
cat $CONTENT_FILE | envsubst  > $HOSTS;
echo "Changing status to: $STATUS"
echo $STATUS > $STATUS_FILE;






