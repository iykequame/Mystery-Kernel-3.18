#!/bin/bash

#Mysteryagr

mkdir -p out

#Change toolchain path before using build script!
export CROSS_COMPILE=~/toolchains/arm-eabi-linaro-4.7.3/bin/arm-eabi-

#Enable only when needed:
#export USE_CCACHE=1

export ARCH=arm ARCH_MTK_PLATFORM=mt6580

#Enable only when needed:
#Delete out directory to clean source
#make clean
#make mrproper

make -C $PWD O=$PWD/out ARCH=arm x510_defconfig

#Edit the number according to the number of CPUs you have in your PC:
make -j1 -C $PWD O=$PWD/out ARCH=arm


