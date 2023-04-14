#!/bin/sh
#
# This script is for Slackware 15.0

BUILD_DIR=libXft-bgra

# Prepare folders
mkdir -p $BUILD_DIR/configure
mkdir -p $BUILD_DIR/patch/libXft
mkdir -p $BUILD_DIR/slack-desc
mkdir -p $BUILD_DIR/src/lib

# Download files to the $BUILD_DIR directory
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/arch.use.flags -O $BUILD_DIR/arch.use.flags
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/modularize -O $BUILD_DIR/modularize
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/noarch -O $BUILD_DIR/noarch
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/package-blacklist -O $BUILD_DIR/package-blacklist
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/x11.SlackBuild -O $BUILD_DIR/x11.SlackBuild
chmod +x $BUILD_DIR/x11.SlackBuild

# Download files to subdirectories
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/configure/configure -O $BUILD_DIR/configure/configure
wget https://gitlab.freedesktop.org/xorg/lib/libxft/-/merge_requests/1.patch -O $BUILD_DIR/patch/libXft/libXft-bgra-support.patch   # BGRA patch
gzip $BUILD_DIR/patch/libXft/libXft-bgra-support.patch
wget https://mirrors.slackware.com/slackware/slackware64-15.0/source/x/x11/slack-desc/libXft -O $BUILD_DIR/slack-desc/libXft
echo 'zcat $CWD/patch/libXft/libXft-bgra-support.patch.gz | patch -p1 --verbose || { touch ${SLACK_X_BUILD_DIR}/${PKGNAME}.failed ; continue ; }' > $BUILD_DIR/patch/libXft.patch
wget https://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.4.tar.gz -O $BUILD_DIR/src/lib/libXft-2.3.4.tar.gz             # Upstream libXft source tarball
wget https://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.4.tar.gz.sig -O $BUILD_DIR/src/lib/libXft-2.3.4.tar.gz.sig     # Source signature 

# Check tarball signature, then remove the libXft signature file
gpg --keyserver keyserver.ubuntu.com --recv-keys 28C642A7
gpg --verify $BUILD_DIR/src/lib/libXft-2.3.4.tar.gz.sig
rm $BUILD_DIR/src/lib/libXft-2.3.4.tar.gz.sig

# Final steps: Build libXft (with the bgra patch):
#cd libXft-bgra
#sudo ./x11.SlackBuild lib libXft
