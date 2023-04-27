Main changes to the default picom.conf file (i.e. opacity settings and picom backend):

```
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
