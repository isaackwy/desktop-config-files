The patch config.c.diff is for UtkarshVerma's [dwmblocks-async](https://github.com/UtkarshVerma/dwmblocks-async).

UtkarshVerma's build of dwmblocks executes each block asynchronously. It has support for clickability.
dwm needs to be patched with [statuscmd](https://dwm.suckless.org/patches/statuscmd/).

To signal changes to the audio module, run `kill -44 $(pidof dwmblocks)`. The audio module has the update signal 10 (which is the default).
