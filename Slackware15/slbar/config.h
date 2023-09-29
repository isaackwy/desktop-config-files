/* See LICENSE file for copyright and license details. */

/* separator used for separating modules */
static const char *sep = " ";
/* length of the given separator */
static const uint sep_len = 1;

/* If update interval is set to 0 then given command will be executed only
 * after receiving given signal. If update signal is set to 0, then there is no
 * signal that will trigger execution of the command. 
 * To send signal use command 'kill -n $(pidof slbar)' 
 * where n is 34 + update signal. */
static const Module modules[] = {
  /* command                update interval    update signal */
  { "bin/statusbar/sb-cpu",    2,                0 },
  { "bin/statusbar/sb-clock",  60,               1 },
  { "bin/statusbar/sb-volume", 0,                10 },
};
