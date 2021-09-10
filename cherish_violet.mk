#
# Copyright (C) 2021 The CherishOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

#CHERISH
CHERISH_BUILD_TYPE=OFFICIAL
TARGET_INCLUDE_PIXEL_CHARGER := true
WITH_GMS := true
PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=KARTHIK&NIRANJAN
    
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
