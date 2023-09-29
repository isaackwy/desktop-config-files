Main changes to the default picom.conf file:
1. fade-delta (3 milliseconds)
2. opacity (fully opaque, at 1.0)
3. backend (glx)

```
fade-delta = 3
inactive-opacity = 1.0;
frame-opacity = 1.0;
backend = "glx";

wintypes:
{
  tooltip = { fade = true; shadow = true; opacity = 1.00; focus = true; full-shadow = false; };
  dock = { shadow = false; clip-shadow-above = true; }
  dnd = { shadow = false; }
  popup_menu = { opacity = 1.0; }
  dropdown_menu = { opacity = 1.0; }
};
```
