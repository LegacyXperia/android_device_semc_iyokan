# Copyright (C) 2011-2013 The CyanogenMod Project
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

# proprietary side of the device
$(call inherit-product, vendor/semc/iyokan/iyokan-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/iyokan/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.device.rc:root/init.device.rc \
    $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# Device specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    $(LOCAL_PATH)/rootdir/system/usr/idc/pm8xxx-keypad.idc:system/usr/idc/pm8xxx-keypad.idc \
    $(LOCAL_PATH)/rootdir/system/usr/keychars/pm8xxx-keypad.kcm:system/usr/keychars/pm8xxx-keypad.kcm \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/pm8xxx-keypad.kl:system/usr/keylayout/pm8xxx-keypad.kl \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini

# Keyboard
PRODUCT_PACKAGES += \
    MogamiKeypad

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.usb.pid_suffix=15A
