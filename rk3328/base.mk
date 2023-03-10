#!/bin/bash

TARGET_PLAT=rk3328
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=rockchip
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_PATCHS+=("feeds/luci/;device/common/src-patchs/22.03/feeds/luci")
FRIENDLYWRT_FILES+=(device/common/ntfs3)
FRIENDLYWRT_FILES+=(device/common/uas)
FRIENDLYWRT_FILES+=(device/common/nft-fullcone)
FRIENDLYWRT_FILES+=(device/common/emmc-tools)
FRIENDLYWRT_FILES+=(device/common/distfeeds)
FRIENDLYWRT_FILES+=(device/common/default-settings)

# U-boot
# 

TARGET_UBOOT_CONFIG="nanopi_r2_defconfig friendlywrt.config"

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
