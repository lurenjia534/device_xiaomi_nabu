#
# Copyright (C) 2018-2023 PixelExperience
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/nabu/device.mk)

# Inherit common configurations
$(call inherit-product, vendor/aosp/config/common_full_tablet_wifionly.mk)

# Inherit device's Aosp Recovery, Quick Tap, Boot Animation, gapps.
TARGET_GAPPS_ARCH := arm64 # Gapps
TARGET_USES_AOSP_RECOVERY := true # Aosp Recovery
TARGET_SUPPORTS_QUICK_TAP := true # Quick Tap
TARGET_BOOT_ANIMATION_RES := 1440 # Boot Animation

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := nabu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 5
PRODUCT_NAME := aosp_nabu

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=2109119DG

# ArrowOS additions
DEVICE_MAINTAINER := K001droid and ganeshi4u

