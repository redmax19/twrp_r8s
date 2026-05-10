#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from r8s device
$(call inherit-product, device/samsung/r8s/device.mk)

PRODUCT_DEVICE := r8s
PRODUCT_NAME := twrp_r8s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G780F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r8sxx-user 11 RP1A.200720.012 G780FXXSOFYJ2 release-keys"

BUILD_FINGERPRINT := samsung/r8sxx/r8s:11/RP1A.200720.012/G780FXXSOFYJ2:user/release-keys
