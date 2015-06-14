# lightdm-pantheon-bg-switcher

This script offer possibility to auto-switch background of lightdm with Pantheon greeter (lightdm-pantheon-greeter).

## Install

### Configure your path
Edit lightdm-pantheon-bg-switcher.sh to define your lightdm background directory (BG_DIR).

### Copy script into /usr/bin
```
cp lightdm-pantheon-bg-switcher.sh /usr/bin/lightdm-pantheon-bg-switcher
```
### Make it executable
```
chmod 755 /usr/bin/lightdm-pantheon-bg-switcher
```
### Configure lightdm to run it when closing a session
change in /etc/lightdm/lightdm.conf
```
...
[SeatDefaults]
...
#session-cleanup-script=
...
```
to
```
...
[SeatDefaults]
...
session-cleanup-script=/usr/bin/lightdm-pantheon-bg-switcher
...
```

## Information

I use it on ArchLinux but I think it must work on every distribution.
