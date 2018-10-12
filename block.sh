#!/bin/sh

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@	 
# @ Copyright (c) Michael Leachim                                                      @
# @ You can find additional information regarding licensing of this work in LICENSE.md @
# @ You must not remove this notice, or any other, from this software.                 @
# @ All rights reserved.                                                               @
# @@@@@@ At 2018-15-09 14:55<mklimoff222@gmail.com> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


# Ths script *will* overwrite /etc/hosts file. Backup it if you have one.

cd $(dirname "$0"); # cd to script dir
## import variables
. ./_conf.sh;
export CONTENT_FILE="./_hosts_block.gpg";
export STATUS="BLOCKED";
. ./_worker.sh;
cd -;




