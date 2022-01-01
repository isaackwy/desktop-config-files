dwm-super-rofi.patch combines the following patches:

systray: https://dwm.suckless.org/patches/systray/dwm-systray-6.2.diff  
pertag-perseltag: https://dwm.suckless.org/patches/pertag/dwm-pertag-perseltag-6.2.diff  
bartabgroups: https://dwm.suckless.org/patches/bartabgroups/dwm-bartabgroups-6.2.diff  
ru_gaps: https://dwm.suckless.org/patches/ru_gaps/dwm-ru_gaps-6.2.diff  
bottomstack: https://dwm.suckless.org/patches/ru_gaps/dwm-ru_bottomstack-6.2.diff  
centeredmaster: https://dwm.suckless.org/patches/ru_gaps/dwm-ru_centeredmaster-6.2.diff  
scratchpad: https://dwm.suckless.org/patches/scratchpad/dwm-scratchpad-6.2.diff  
use-mod4: https://slackbuilds.org/slackbuilds/14.2/desktop/dwm/sbo-patches/use-mod4.patch  
replace-dmenu-rofi: https://slackbuilds.org/slackbuilds/14.2/desktop/dwm/sbo-patches/replace-dmenu-rofi.patch  

However, this patch does not contain the bstackhoriz and centeredfloatingmaster layouts.

Credits for each patch are available at the Suckless Tools website.  
However, the use-mod4 and replace-dmenu-rofi patches are provided by slackbuilds.org  
(Dave Woodfall provided these 2 patches - he is the maintainer of the dwm SlackBuild.)

## Extra shortcuts  
+ ``Win-```: **scratchpad**  
+ `Win-x`: **lock screen with xscreensaver**  
+ `Win-Shift-KP_Up`: **increase volume by 1**  
+ `Win-Shift-KP_Down`: **decrease volume by 1**  
+ `Win-Shift-q`: **spawn dwm shutdown prompt (instead of closing dwm)**  

## Layouts  
+ `Win-u`: **bottomstack layout**  
+ `Win-o`: **centered master layout**  
+ `Win-equal`: **increase gaps by 5**  
+ `Win-minus`: **decrease gaps by 5**  
+ `Win-Shift-minus`: **reset gaps to 0**  
