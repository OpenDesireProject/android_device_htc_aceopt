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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# HTC Audio
$(call inherit-product, device/htc/ace/media_a1026.mk)
$(call inherit-product, device/htc/ace/media_htcaudio.mk)

# Inherit qcom proprietary blobs
$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/ace/overlay

COMMON_PATH := device/htc/ace

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/ramdisk/fstab.spade:root/fstab.spade \
	$(COMMON_PATH)/ramdisk/init.spade.rc:root/init.spade.rc \
	$(COMMON_PATH)/ramdisk/ueventd.spade.rc:root/ueventd.spade.rc

# GPS config
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/gps.conf:system/etc/gps.conf

# HTC BT audio config
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# ACDB
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/default.acdb:system/etc/firmware/default.acdb \
	$(COMMON_PATH)/configs/default_org.acdb:system/etc/firmware/default_org.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	$(COMMON_PATH)/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(COMMON_PATH)/dsp/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
	$(COMMON_PATH)/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	$(COMMON_PATH)/dsp/HP_Audio.csv:system/etc/HP_Audio.csv \
	$(COMMON_PATH)/dsp/HP_Video.csv:system/etc/HP_Video.csv \
	$(COMMON_PATH)/dsp/SPK_Combination.csv:system/etc/SPK_Combination.csv \
	$(COMMON_PATH)/dsp/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
	$(COMMON_PATH)/dsp/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

# Keylayouts and keychars
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/keylayout/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
	$(COMMON_PATH)/keylayout/keychars/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
	$(COMMON_PATH)/keylayout/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm \
	$(COMMON_PATH)/keylayout/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	$(COMMON_PATH)/keylayout/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(COMMON_PATH)/keylayout/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	$(COMMON_PATH)/keylayout/keylayout/spade-keypad.kl:system/usr/keylayout/spade-keypad.kl \
	$(COMMON_PATH)/keylayout/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	$(COMMON_PATH)/keylayout/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
	$(COMMON_PATH)/keylayout/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(COMMON_PATH)/idc/spade-keypad.idc:system/usr/idc/spade-keypad.idc \
	$(COMMON_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	$(COMMON_PATH)/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc

# Copy bcm4329 firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# BCM4329 firmware
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# GPS / BT / Lights / Sensors
PRODUCT_PACKAGES += \
	libbt-vendor \
	lights.spade \
	sensors.spade \
	librpc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.com.google.gmsversion=2.3_r3

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vold.umsdirtyratio=50

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US

# Odexed extra version and goo.im rom
ifeq ($(TARGET_WITH_DEXPREOPT),true)
TARGET_UNOFFICIAL_BUILD_ID := ODEXED
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.rom=MustaKitkatNightlyOdexed
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.rom=MustaKitkatNightly
endif

# The rest of goo.im props
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.developerid=Mustaavalkosta \
	ro.goo.version=$(shell date -u +%Y%m%d)

# call the proprietary setup
$(call inherit-product, vendor/htc/ace/ace-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# lower the increment
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.heapgrowthlimit=36m

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := ace
PRODUCT_NAME := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
