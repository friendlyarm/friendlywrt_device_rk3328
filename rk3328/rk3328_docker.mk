#!/bin/bash

. device/friendlyelec/rk3328/base.mk

TARGET_IMAGE_DIRNAME=friendlywrt22-docker
TARGET_FRIENDLYWRT_CONFIG=rockchip-docker

TARGET_SD_RAW_FILENAME=friendlywrt-22.03-docker_$(date +%Y%m%d)_rk3328_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=friendlywrt-22.03-docker_$(date +%Y%m%d)_rk3328_arm64_eflasher.img
