## Patches (in alphabetical order):
- [awesomebar](http://dwm.suckless.org/patches/awesomebar/) (also includes a 'hide other windows' function adapted from [theniceboy](https://github.com/theniceboy/dwm-hide-and-restore-win.diff)'s patch)  
- [bidi](https://dwm.suckless.org/patches/bidi) - Right-to-left language support (only for title)  
- [center](https://dwm.suckless.org/patches/center/) - centre all floating windows by default (except for gsimplecal)  
- [cool autostart](https://dwm.suckless.org/patches/cool_autostart/) - program autostarter (which terminates processes upon exiting dwm)  
- [cyclelayouts](https://dwm.suckless.org/patches/cyclelayouts/)  
- [desktop icons](https://github.com/bakkeby/patches/blob/master/dwm/dwm-desktop_icons-6.3.diff) - allow file managers to manage the desktop  
- [hide vacant tags](https://dwm.suckless.org/patches/hide_vacant_tags/)  
- [movestack](https://github.com/bakkeby/dwm-flexipatch/blob/master/patch/movestack.c) - XMonad-like behaviour for moving clients within the stack  
- [pertag-perseltag](https://dwm.suckless.org/patches/pertag/dwm-pertag-perseltag-6.2.diff) - changes affect all selected tags instead of only the first selected one  
- [quitprompt](https://dwm.suckless.org/patches/quitprompt/) - `Win-Shift-q` now prompts the user for exit options (reload/logout/reboot/shutdown)  
- [restoreafterrestart](https://dwm.suckless.org/patches/restoreafterrestart/) - this patch keeps all the windows in their previous tags after restarting dwm  
- [ru gaps](https://web.archive.org/web/20220627080229/https://dwm.suckless.org/patches/ru_gaps/) (with [bottomstack](https://web.archive.org/web/20211205174715/https://dwm.suckless.org/patches/ru_gaps/dwm-ru_bottomstack-6.2.diff) and [gaplessgrid](https://web.archive.org/web/20211205170841/https://dwm.suckless.org/patches/ru_gaps/dwm-ru_gaplessgrid-6.2.diff) layouts)  
- [scratchpad](https://dwm.suckless.org/patches/scratchpad/) - launches a floating terminal window (in this case, [Kitty](https://sw.kovidgoyal.net/kitty/))  
- [status2d](https://dwm.suckless.org/patches/status2d/dwm-status2d-systray-6.4.diff) (embeds [systray](https://dwm.suckless.org/patches/systray/) within the patch)  
- [statuscmd](https://dwm.suckless.org/patches/statuscmd/dwm-statuscmd-status2d-20210405-60bb3df.diff) (with signals, for builds patched with [status2d](https://dwm.suckless.org/patches/status2d/))  
- [swallow](https://dwm.suckless.org/patches/swallow/) (swallows windows opened by terminals)  
- [titlecolor](https://dwm.suckless.org/patches/titlecolor/)  
- [truecenteredtitle](https://dwm.suckless.org/patches/truecenteredtitle/)  
- [use-mod4](https://slackbuilds.org/slackbuilds/15.0/desktop/dwm/sbo-patches/use-mod4.patch)  
- [replace-dmenu-rofi](https://slackbuilds.org/slackbuilds/15.0/desktop/dwm/sbo-patches/replace-dmenu-rofi.patch)  
- [viewontag](https://dwm.suckless.org/patches/viewontag/dwm-viewontag-20210312-61bb8b2.diff) - follow window to the tag it is being moved to (except the "all" tag)  
- [winicon](https://dwm.suckless.org/patches/winicon/)  

However, this patch does not contain the bstackhoriz layout from the [bottomstack](https://dwm.suckless.org/patches/bottomstack/dwm-bottomstack-6.1.diff) patch.  
In addition, this patch underlines the current active window (feature inspired by the [underlinetags](https://dwm.suckless.org/patches/underlinetags/) patch).

## Color theme
- Mint-Y-Dark-Teal

## Runtime dependencies
- [rofi](https://github.com/davatorium/rofi)  
- [dmenu](https://tools.suckless.org/dmenu/) (due to the quitprompt patch)  
- libimlib2 (due to winicon)  

## Program shortcuts
+ `` Win-` ``: **scratchpad**
+ `Win-x`: **lock screen with [slock](https://tools.suckless.org/slock/)**
+ `Win-Shift-KP_Up`: **increase volume by 1**
+ `Win-Shift-KP_Down`: **decrease volume by 1**
+ `Win-s`: **Display current window name (the window name displayed by awesomebar can become too short when there are too many tabs)**

## Layouts (with additional keybindings)

Layouts are in the following order:  
tile: `[]=`, bstack: `TTT`, gaplessgrid: `###`, monocle: `[M]`, floating: `><>`

+ `Win-u`: **bottomstack layout**
+ `Win-g`: **gaplessgrid layout**
+ `Win-Shift-KP_Right`: **cycle to next layout**
+ `Win-Shift-KP_Left`: **cycle to previous layout**
+ `Win-Shift-j`: **shift client away from master by 1 window (ignores hidden windows)**
+ `Win-Shift-k`: **shift client toward master by 1 window (ignores hidden windows)**
+ `Win-equal`: **increase gaps by 5**
+ `Win-minus`: **decrease gaps by 5**
+ `Win-Shift-minus`: **reset gaps to 0**

## Awesomebar keybindings

+ `Win-j`/`Win-k`: **Cycle through the visible windows in the current workspace**
+ `Win-Alt-j`/`Win-Alt-k`: **Cycle through all windows (visible and hidden ones) in the current workspace**
+ `Win-e`: **Hide the current active window**
+ `Win-Shift-e`: **Hide all other windows (except the currently active one)**
+ `Win-w`: **Unhide (show) a window made visible by** `Win-Alt-j`/`Win-Alt-k`
+ `Win-Shift-w`: **Show all windows (including hidden ones) in the current workspace**
