Prints a calendar along with system info (e.x. cpu temperature)

Calendar for the current month is heavily based on a tip from Arch Linux wiki:  
https://wiki.archlinux.org/title/Conky/Tips_and_tricks#Display_a_calendar_for_the_current_month  

The following transparency setting on conky.conf is specifically for dwm (and other similar tiling window manangers):  
`own_window_type = 'override'`

Colors are:
+ green for current day
+ orange for CPU temperature (Ryzen)
+ red for GPU fan speed and temperature (AMD)
+ blue for NVMe temperature (WD Blue)

When using these config files for conky, please make cal.lua executable.