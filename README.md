Simple solution for blocking unwanted internet usage patterns with time logging and behavioural placement

It should be **difficult** to start browsing unwanted stuff. It should be **easy** to **stop**
doing so. 

## First step is to download and set it up

```
mkdir -p ./i/n/t/e/r/n/e/t/b/l/o/c/k/
cd ./i/n/t/e/r/n/e/t/b/l/o/c/k/
git clone https://github.com/MichaelLeachim/internet_blck
```

Then you should `cp _conf_sample.sh _conf.sh`
and set up password for `_hosts_block.gpg` and `_hosts_allow.gpg` files there.

Then you should write hosts that you are going to block in `_hosts_block.gpg`
and write hosts that you are going to allow in `_hosts_allow.gpg` 
and then encrypt them with **symmetric cipher**. 

## Second step, is to bind block.sh to a keybinding

**WARNING! Using these scripts will override 
  your /etc/hosts file. Back it up!**
  
I use i3wm. And it looks like this:

`bindsym $mod+F4 exec  /home/mik/Projects/i/n/t/e/r/n/e/t/b/l/o/c/k/block.sh`
  
It is by design, that you can't use **allow.sh** from outside of the scripts folder. 
It should be **difficult** to start browsing unwanted stuff. It should be **easy** to **stop**
doing so. 

## Stats Status and i3 integration

I like status to be displayed in the dock, so I
`echo /home/mik/Projects/internet_block/_status` 
to the dock in the i3wm by using `py3status` 
and a custom runner script like this:

```python
# -*- coding: utf-8 -*-

import subprocess
import time
class Py3status:
  cache_timeout = 10
  formatted = "%s"
  def shell_call(self):
    return {
      'full_text':self.formatted%(subprocess.check_output(self.script_path).replace("\n","")),
      'cached_until': time.time()  + self.cache_timeout,
    }
```

And then in the `i3status.conf` file:

```sh

order += "shell_call internet_block"
shell_call internet_block {
  script_path = "/home/mik/Projects/internet_block/status.sh"
}

```

You can do the same for conky making it look cool. 




