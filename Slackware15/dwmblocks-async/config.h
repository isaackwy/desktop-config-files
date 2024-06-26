#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER " "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0

// Define blocks for the status feed as X(cmd, interval, signal).
// Replace 'user' with your username
#define BLOCKS(X) \
    X("", "/home/user/bin/statusbar/sb-memory", 2, 1) \
    X("", "/home/user/bin/statusbar/sb-clock", 60, 2) \
    X("", "/home/user/bin/statusbar/sb-volume", 0, 10) \

#endif  // CONFIG_H
