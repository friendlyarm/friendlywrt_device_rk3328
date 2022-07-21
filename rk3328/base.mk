#!/bin/bash

TARGET_PLAT=rk3328
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=rockchip
FRIENDLYWRT_SRC=friendlywrt
# FRIENDLYWRT_PATCHS+=(device/friendlyelec/rk3328/patches/0001-optimize-for-rk3328.patch)
FRIENDLYWRT_FILES+=(device/common/ntfs3)
FRIENDLYWRT_FILES+=(device/common/default-settings)
FRIENDLYWRT_FILES+=(device/common/emmc-tools)
FRIENDLYWRT_FILES+=(device/common/busybox-top)
FRIENDLYWRT_FILES+=(device/common/distfeeds)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi_r2_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG=nanopi-r2_linux_defconfig
TARGET_KERNEL_DTB=resource.img

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_generic_musl/root-rockchip
FRIENDLYWRT_PACKAGE_DIR=bin/targets/rockchip/armv8/packages
TARGET_IMAGE_DIRNAME=friendlywrt22
TARGET_SD_RAW_FILENAME=friendlywrt_22.03_$(date +%Y%m%d)_rk3328_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=friendlywrt_22.03_$(date +%Y%m%d)_rk3328_arm64_eflasher.img
