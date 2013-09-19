#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true

TARGET_DEVICE_TREE := true
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=g2 user_debug=31 msm_rtb.filter=0x0
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x05000000

TARGET_KERNEL_CONFIG := cyanogenmod_vs980_defconfig
#TARGET_KERNEL_CONFIG := g2-att-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/f320k

# assert
TARGET_OTA_ASSERT_DEVICE := vs980

## TWRP Flags
DEVICE_RESOLUTION := 1080x1920
HAVE_SELINUX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
RECOVERY_SDCARD_ON_DATA := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
# I'll enable this later just for ext_sd
TW_NO_USB_STORAGE := true
TW_NO_EXFAT := true
BOARD_HAS_LARGE_FILESYSTEM := true
# disable SD partitioning
BOARD_HAS_NO_REAL_SDCARD := true

RECOVERY_FSTAB_VERSION = 2

ENABLE_LOKI_RECOVERY := true

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB = device/lge/vs980/ramdisk/fstab.g2

# board-info
TARGET_BOARD_INFO_FILE := device/lge/vs980/board-info.txt

# inherit from the proprietary version
-include vendor/lge/vs980/BoardConfigVendor.mk
