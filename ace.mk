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

# call the proprietary setup
$(call inherit-product, vendor/htc/ace/ace-vendor.mk)

# HACK: Set TARGET_DEVICE for common configuration if blocks
TARGET_DEVICE := aceopt
# Inherit common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# HTC Audio
$(call inherit-product, device/htc/aceopt/media_a1026.mk)
$(call inherit-product, device/htc/aceopt/media_htcaudio.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/aceopt/overlay

COMMON_PATH := device/htc/aceopt

# Boot ramdisk setup
PRODUCT_PACKAGES += \
    fstab.htc7x30 \
    init.target.rc

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	$(COMMON_PATH)/rootdir/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(COMMON_PATH)/rootdir/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
	$(COMMON_PATH)/rootdir/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	$(COMMON_PATH)/rootdir/system/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
	$(COMMON_PATH)/rootdir/system/etc/HP_Video.csv:system/etc/HP_Video.csv \
	$(COMMON_PATH)/rootdir/system/etc/SPK_Combination.csv:system/etc/SPK_Combination.csv \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

# Keylayouts and keychars
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
	$(COMMON_PATH)/rootdir/system/usr/keychars/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
	$(COMMON_PATH)/rootdir/system/usr/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/spade-keypad.kl:system/usr/keylayout/spade-keypad.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/spade-keypad.idc:system/usr/idc/spade-keypad.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc

# Copy bcm4329 firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# BCM4329 firmware
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# BT / Lights / Sensors
PRODUCT_PACKAGES += \
	libbt-vendor \
	lights.spade \
	sensors.spade

# GPS
PRODUCT_PACKAGES += gps.msm7x30

# Proximity Recalibrator
PRODUCT_PACKAGES += ProximityRecalibrator

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vold.umsdirtyratio=20

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US

ifeq ($(DISABLE_SECURITY),true)
# Disable ADB authentication and use root shell
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	ro.secure=0
endif
