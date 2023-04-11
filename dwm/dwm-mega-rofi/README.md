## Patches (in alphabetical order):
- [autostart](https://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff) - start dwm autostart [script](https://github.com/isaackwy/desktop-preferences/tree/master/dotfiles/.dwm).  
- [bartabgroups](https://dwm.suckless.org/patches/bartabgroups/)  
- [cyclelayouts](https://dwm.suckless.org/patches/cyclelayouts/)  
- [desktop icons](https://github.com/bakkeby/patches/blob/master/dwm/dwm-desktop_icons-6.3.diff) (from bakkeby)  
- [hidevacanttags](https://dwm.suckless.org/patches/hide_vacant_tags/)  
- [movestack](https://dwm.suckless.org/patches/movestack/)  
- [pertag-perseltag](https://dwm.suckless.org/patches/pertag/dwm-pertag-perseltag-6.2.diff) - changes affect all selected tags  
- [restoreafterrestart](https://dwm.suckless.org/patches/restoreafterrestart/) - quitprompt already contains a restart variable.  
- [ru gaps](https://web.archive.org/web/20220627080229/https://dwm.suckless.org/patches/ru_gaps/) (with bottomstack and gaplessgrid layouts)  
- [scratchpad](https://dwm.suckless.org/patches/scratchpad/) - launches a floating terminal window (in this case, Kitty)  
- [statuscmd](https://dwm.suckless.org/patches/statuscmd/dwm-statuscmd-20210405-67d76bd.diff) (the signal version)  
- [systray](https://dwm.suckless.org/patches/systray/)  
- [truecenteredtitle](https://dwm.suckless.org/patches/truecenteredtitle/)  
- [use-mod4](https://slackbuilds.org/slackbuilds/15.0/desktop/dwm/sbo-patches/use-mod4.patch)  
- [quitprompt](https://dwm.suckless.org/patches/quitprompt/)  
- [replace-dmenu-rofi](https://slackbuilds.org/slackbuilds/15.0/desktop/dwm/sbo-patches/replace-dmenu-rofi.patch)  
- [winicon](https://dwm.suckless.org/patches/winicon/)  

However, this patch does not contain the bstackhoriz layout from the [bottomstack](https://dwm.suckless.org/patches/bottomstack/dwm-bottomstack-6.1.diff) patch.

## Color theme:
- Matcha-dark-sea. Refer to vinceliuice's gtk [theme](https://github.com/vinceliuice/Matcha-gtk-theme)

## Extra shortcuts  
+ `` Win-` ``: **scratchpad**  
+ `Win-x`: **lock screen with xscreensaver**  
+ `Win-Shift-KP_Up`: **increase volume by 1**  
+ `Win-Shift-KP_Down`: **decrease volume by 1**  

## Layouts  
+ `Win-u`: **bottomstack layout**  
+ `Win-g`: **gaplessgrid layout**  
+ `Win-equal`: **increase gaps by 5**  
+ `Win-minus`: **decrease gaps by 5**  
+ `Win-Shift-minus`: **reset gaps to 0** 

## Dependencies
This patch requires:
- [rofi](https://github.com/davatorium/rofi), of course  
- [dmenu](https://tools.suckless.org/dmenu/) (due to quitprompt)  
- imlib2 (due to winicon)
