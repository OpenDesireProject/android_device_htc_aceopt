#
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
#

$(call inherit-product, vendor/htc/ace/ace-vendor.mk)
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	$(LOCAL_PATH)/rootdir/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(LOCAL_PATH)/rootdir/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(LOCAL_PATH)/rootdir/system/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
	$(LOCAL_PATH)/rootdir/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	$(LOCAL_PATH)/rootdir/system/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
	$(LOCAL_PATH)/rootdir/system/etc/HP_Video.csv:system/etc/HP_Video.csv \
	$(LOCAL_PATH)/rootdir/system/etc/SPK_Combination.csv:system/etc/SPK_Combination.csv \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
	$(LOCAL_PATH)/rootdir/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.htc7x30 \
    init.target.rc

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/usr/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
	$(LOCAL_PATH)/rootdir/system/usr/keychars/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
	$(LOCAL_PATH)/rootdir/system/usr/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm \
	$(LOCAL_PATH)/rootdir/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(LOCAL_PATH)/rootdir/system/usr/keylayout/spade-keypad.kl:system/usr/keylayout/spade-keypad.kl \
	$(LOCAL_PATH)/rootdir/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	$(LOCAL_PATH)/rootdir/system/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
	$(LOCAL_PATH)/rootdir/system/usr/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# IDCs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(LOCAL_PATH)/rootdir/system/usr/idc/spade-keypad.idc:system/usr/idc/spade-keypad.idc \
	$(LOCAL_PATH)/rootdir/system/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	$(LOCAL_PATH)/rootdir/system/usr/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc

# Lights / Sensors
PRODUCT_PACKAGES += \
	lights.spade \
	sensors.spade

# Bluetooth
PRODUCT_PACKAGES += bt_vendor.conf

# GPS
PRODUCT_PACKAGES += gps.msm7x30

# Proximity Recalibrator
PRODUCT_PACKAGES += ProximityRecalibrator

# Audio Props - not sure about this (unused?)
PRODUCT_PROPERTY_OVERRIDES += \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=0 \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=1

ifeq ($(DISABLE_SECURITY),true)
# Disable ADB authentication and use root shell
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	ro.secure=0
endif
