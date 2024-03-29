## Introduction
In Slackware 15.0, libXft does not provide BGRA glyph support by default.  
BGRA support is required for displaying color emojis on suckless software (e.x. dwm).

This script downloads all the files necessary for building libXft with the BGRA patch.  
The patch was written by Maxime Coste:
https://gitlab.freedesktop.org/xorg/lib/libxft/merge_requests/1.patch

Unlike [OldTechBloke's](https://gitlab.com/OldTechBloke/slackware-libxft-bgra/) SlackBuild, my script sticks closely with the build files from the default Slackware repository.

## Instructions
1. Download my `libXft-bgra-Slackware15.sh` script and add executable permission:  
```
wget https://raw.githubusercontent.com/isaackwy/desktop-preferences/master/Slackware15/libXft-bgra-Slackware15/libXft-bgra-Slackware15.sh
chmod +x libXft-bgra-Slackware15.sh
```

2. Run the script. It downloads the files for building libXft. This script will also check the signature of the upstream libXft tarball:  
`sh libXft-bgra-Slackware15.sh`

3. The script will create a new build directory named 'libXft-bgra'. Please change to it:  
`cd libXft-bgra`

4. Run the script. libXft will install (or rather, reinstall) automatically:  
`sudo ./x11.SlackBuild lib libXft`
