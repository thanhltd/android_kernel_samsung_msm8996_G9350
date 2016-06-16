#!/bin/bash

export PATH=/home/bit/Android/CyanogenMod/cm-13.0/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PATH
export CROSS_COMPILE=/home/bit/Android/CyanogenMod/cm-13.0/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64
export SEC_BUILD_OPTION_HW_REVISION=02

rm -rf ~/out
mkdir ~/out

make -C $(pwd) O=/home/bit/out KCFLAGS=-mno-android msdx321_defconfig
make -C $(pwd) O=/home/bit/out KCFLAGS=-mno-android -j8
