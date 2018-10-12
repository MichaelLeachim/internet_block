#!/bin/sh

# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# @ Copyright (c) Michael Leachim                                                      @
# @ You can find additional information regarding licensing of this work in LICENSE.md @
# @ You must not remove this notice, or any other, from this software.                 @
# @ All rights reserved.                                                               @
# @@@@@@ At 2018-12-10 23:45 <mklimoff222@gmail.com> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

export PASSWORD="Your Hosts Password Here"
export REDIRECT_TO="127.0.0.0"
export HOSTS="/etc/hosts"
export STATUS_FILE="./_status"
export TIMELOG_FILE="./_timelog"
export TIMESTAMP="$(date '+%Y.%m.%d %H:%M:%S')"
export red=" tput setaf 1 "
export green=" tput setaf 2 "
export reset=" tput sgr0 "







