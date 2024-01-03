This patch is almost the same as my [dwm-awesome-rofi](https://github.com/isaackwy/desktop-preferences/tree/master/dwm/dwm-awesome-rofi). However, this dwm build does not have the window hiding feature from the [awesomebar](http://dwm.suckless.org/patches/awesomebar/) patch.

## Patches (in alphabetical order):
- [autostart](https://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff) - launch dwm autostart [script](https://github.com/isaackwy/desktop-preferences/tree/master/dotfiles/.dwm)  
- [awesomebar](http://dwm.suckless.org/patches/awesomebar/) (however, this dwm build does not hide windows)  
- [cyclelayouts](https://dwm.suckless.org/patches/cyclelayouts/)  
- [desktop icons](https://github.com/bakkeby/patches/blob/master/dwm/dwm-desktop_icons-6.3.diff) - allow file managers to manage the desktop  
- [hide vacant tags](https://dwm.suckless.org/patches/hide_vacant_tags/)  
- [movestack](https://raw.githubusercontent.com/bakkeby/dwm-flexipatch/master/patch/movestack.c) - XMonad-like behaviour for moving clients within the stack   
- [pertag-perseltag](https://dwm.suckless.org/patches/pertag/dwm-pertag-perseltag-6.2.diff) - changes affect all selected tags instead of only the first selected one  
- [quitprompt](https://dwm.suckless.org/patches/quitprompt/) - `Win-Shift-q` now prompts the user for exit options (reload/logout/reboot/shutdown)  
- [restoreafterrestart](https://dwm.suckless.org/patches/restoreafterrestart/) - this patch keeps all the windows in their previous tags after restarting dwm  
- [ru gaps](https://web.archive.org/web/20220627080229/https://dwm.suckless.org/patches/ru_gaps/) (with [bottomstack](https://web.archive.org/web/20211205174715/https://dwm.suckless.org/patches/ru_gaps/dwm-ru_bottomstack-6.2.diff) and [gaplessgrid](https://web.archive.org/web/20211205170841/https://dwm.suckless.org/patches/ru_gaps/dwm-ru_gaplessgrid-6.2.diff) layouts)  
- [scratchpad](https://dwm.suckless.org/patches/scratchpad/) - launches a floating terminal window (in this case, [Kitty](https://sw.kovidgoyal.net/kitty/))  
- [status2d](https://dwm.suckless.org/patches/status2d/dwm-status2d-systray-6.4.diff) (with systray)  
- [statuscmd](https://dwm.suckless.org/patches/statuscmd/dwm-statuscmd-status2d-20210405-60bb3df.diff) (with signals, for builds patched with [status2d](https://dwm.suckless.org/patches/status2d/))  
- [swallow](https://dwm.suckless.org/patches/swallow/) (swallows windows opened by terminals)  
- [titlecolor](https://dwm.suckless.org/patches/titlecolor/)  
- [truecenteredtitle](https://dwm.suckless.org/patches/truecenteredtitle/)  
- [use-mod4](https://slackbuilds.org/slackbuilds/15.0/desktop/dwm/sbo-patches/use-mod4.patch)  
- [replace-dmenu-rofi](https://slackbuilds.org/slackbuilds/15.0/desktop/dwm/sbo-patches/replace-dmenu-rofi.patch)  
- [winicon](https://dwm.suckless.org/patches/winicon/)  

However, this patch does not contain the bstackhoriz layout from the [bottomstack](https://dwm.suckless.org/patches/bottomstack/dwm-bottomstack-6.1.diff) patch.

## Color theme
- Matcha-dark-sea. Refer to vinceliuice's gtk [theme](https://github.com/vinceliuice/Matcha-gtk-theme)

## Requirements
- [rofi](https://github.com/davatorium/rofi) (of course)  
- [dmenu](https://tools.suckless.org/dmenu/) (due to the quitprompt patch)  
- imlib2 (due to winicon)  

## Program shortcuts
+ `` Win-` ``: **scratchpad**  
+ `Win-x`: **lock screen with [xsecurelock](https://github.com/google/xsecurelock)**  
+ `Win-Shift-KP_Up`: **increase volume by 1**  
+ `Win-Shift-KP_Down`: **decrease volume by 1**  

## Layouts (with additional keybindings) 

Layouts are in the following order:  
tile: `[]=`, bstack: `TTT`, gaplessgrid: `###`, monocle: `[M]`, floating: `><>`

+ `Win-u`: **bottomstack layout**  
+ `Win-g`: **gaplessgrid layout**  
+ `Win-Shift-KP_Right`: **cycle to next layout**
+ `Win-Shift-KP_Left`: **cycle to previous layout**
+ `Win-Shift-j`: **shift client away from master by 1 window**  
+ `Win-Shift-k`: **shift client toward master by 1 window**  
+ `Win-equal`: **increase gaps by 5**  
+ `Win-minus`: **decrease gaps by 5**  
+ `Win-Shift-minus`: **reset gaps to 0**  
