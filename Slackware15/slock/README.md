Patches for slock 1.5.  
Note that my dwm patches invoke xsecurelock (rather than slock) as the screen locker.

## Apply patches in the following order:
1. slock-background-dwmlogo  
2. slock-showtime  
3. matcha-color-text

slock-background-dwmlogo already integrates [config.mk.patch](https://slackbuilds.org/slackbuilds/15.0/desktop/slock/patches/) from SlackBuilds.  
Therefore, the slock SlackBuild must not run config.mk.patch.  
Instead, within the following line, change "config.mk.patch" to "slock-background-dwmlogo.patch", as per the following:  
`sed "s,@SLACKCFLAGS@,$SLKCFLAGS," $CWD/patches/slock-background-dwmlogo.patch | patch -p1`

## slock-background-dwmlogo
This patch combines the [background image](https://tools.suckless.org/slock/patches/background-image/) and [dwmlogo](https://tools.suckless.org/slock/patches/dwmlogo/) patches.

The dwm logo does not appear until the user has pressed a key.

## slock-showtime
This is the [showtime](https://tools.suckless.org/slock/patches/showtime/) patch from Suckless's website.  
However, I have placed the current date and time on the right hand corner of the screen (instead of on the centre, as per the patch's default).  
The date and time is of the format "ddd mm dd yyyy hh:mm" - for example, Fri Oct 04 2024 14:15

## matcha-color-text
This color scheme is inspired by vinceliuice's Matcha dark sea gtk [theme](https://github.com/vinceliuice/Matcha-gtk-theme).
