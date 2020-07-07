#!/bin/bash

TARGET_PLAT=rk3328
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=config_rk3328
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_PACKAGES+=(packages/pkg1)
FRIENDLYWRT_PACKAGES+=(packages/pkg2)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3328/default-settings)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3328/common-files)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi_r2_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG=nanopi-r2_linux_defconfig
TARGET_KERNEL_DTB=resource.img

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_cortex-a53_musl/root-rockchip-rk3328
TARGET_IMAGE_DIRNAME=friendlywrt
TARGET_SD_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_NanoPi-NEO3_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_NanoPi-NEO3_arm64_eflasher.img


