The custom config.h file is for [slbar](https://github.com/Rentib/slbar).

dwm requires the [statuscmd](https://dwm.suckless.org/patches/statuscmd/) patch for providing signal handling.  
dwm also requires the [status2d](https://dwm.suckless.org/patches/status2d/) patch for color support.

To signal changes to the audio module, run `kill -44 $(pidof slbar)`. The audio module has the update signal 10 (which is the default).
