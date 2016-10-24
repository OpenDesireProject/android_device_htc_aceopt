# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit ace vendor
-include vendor/htc/ace/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := spade

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
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30
BOARD_KERNEL_CMDLINE := no_console_suspend=1 androidboot.selinux=permissive androidboot.hardware=htc7x30
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x4000000
BOARD_KERNEL_PAGE_SIZE := 4096

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/aceopt/bluetooth/include
BOARD_CUSTOM_BT_CONFIG := device/htc/aceopt/bluetooth/vnd_ace.txt

# Spade DSP profile
BOARD_GLOBAL_CFLAGS += -DWITH_SPADE_DSP_PROFILE

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/htc/aceopt
TARGET_RECOVERY_FSTAB := device/htc/aceopt/rootdir/fstab.htc7x30
