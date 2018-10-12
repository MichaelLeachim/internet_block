#!/bin/sh

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@	 
# @ Copyright (c) Michael Leachim                                                      @
# @ You can find additional information regarding licensing of this work in LICENSE.md @
# @ You must not remove this notice, or any other, from this software.                 @
# @ All rights reserved.                                                               @
# @@@@@@ At 2018-15-09 15:08<mklimoff222@gmail.com> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

# Ths script *will* overwrite /etc/hosts file. Backup it if you have one.

## import variables 
. ./_conf.sh;
export CONTENT_FILE="./_hosts_allow.gpg";
export STATUS="ALLOWED";
. ./_worker.sh;
