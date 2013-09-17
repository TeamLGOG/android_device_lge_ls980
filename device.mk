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

# This file includes all definitions that apply to ALL gee-series devices, and
# are also specific to geefhd devices
#
# Everything in this directory will become public

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/lge/vs980/vs980-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/vs980/overlay

## common overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/vs980/overlay

PRODUCT_PACKAGES := \
	lights.vs980

# Recovery
PRODUCT_COPY_FILES += \
    device/lge/vs980/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

#TWRP fstab
PRODUCT_COPY_FILES += \
    device/lge/vs980/configs/twrp.fstab:recovery/root/etc/twrp.fstab

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Telephony Properties
PRODUCT_PROPERTY_OVERRIDES += \
        ro.cdma.home.operator.numeric=310004 \
        ro.cdma.home.operator.alpha=Verizion \
        telephony.lteOnCdmaDevice=1 \
        telephony.lte.cdma.device=1 \
        ro.telephony.default_network=8 \
        ro.ril.def.preferred.network=8 \
        ril.subscription.types=NV,RUIM \
        ro.cdma.subscribe_on_ruim_ready=true \
        persist.radio.no_wait_for_card=1 \
        keyguard.no_require_sim=true \
        telephony.sms.pseudo_multipart=1 \
        DEVICE_PROVISIONED=1


# GPS configuration
PRODUCT_COPY_FILES += \
        device/lge/vs980/configs/gps.conf:system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/vs980/ramdisk/init.g2.rc:root/init.g2.rc \
    device/lge/vs980/ramdisk/ueventd.g2.rc:root/ueventd.g2.rc \
    device/lge/vs980/ramdisk/fstab.g2:root/fstab.g2


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# CameraHAL
PRODUCT_PACKAGES += \
   camera.vs980
