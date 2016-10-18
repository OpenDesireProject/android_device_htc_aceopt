# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).


# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/ace/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := spade

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p17: 00040000 00000200 "misc"
#mmcblk0p21: 0087f400 00000200 "recovery"
#mmcblk0p22: 00400000 00000200 "boot"
#mmcblk0p25: 22dffe00 00000200 "system"
#mmcblk0p27: 12bffe00 00000200 "cache"
#mmcblk0p26: 496ffe00 00000200 "userdata"
#mmcblk0p28: 014bfe00 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"

# Use data partition size here because we are using
# it as /system
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1232072704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

# Keep ro.product.device as ace to keep camera blobs happy.
TARGET_VENDOR_DEVICE_NAME := ace
# But use aceopt for updater-script assert check
TARGET_OTA_ASSERT_DEVICE := aceopt

# Kernel
TARGET_KERNEL_CONFIG := ace_defconfig

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/htc/aceopt
TARGET_RECOVERY_FSTAB := device/htc/aceopt/rootdir/fstab.htc7x30

# Brightness
BRIGHTNESS_SYS_FILE := /sys/devices/platform/leds-pm8058/leds/keyboard-backlight/brightness

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/aceopt/bluetooth/include
BOARD_BLUEDROID_VENDOR_CONF := device/htc/aceopt/bluetooth/vnd_ace.txt

# Spade DSP profile
COMMON_GLOBAL_CFLAGS += -DWITH_SPADE_DSP_PROFILE
