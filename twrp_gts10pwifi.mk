#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gts10pwifi device
$(call inherit-product, device/samsung/gts10pwifi/device.mk)

PRODUCT_DEVICE := gts10pwifi
PRODUCT_NAME := twrp_gts10pwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X820
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts10pwifixx-user 15 AP3A.240905.015.A2 X820XXU3BYE1 release-keys"

BUILD_FINGERPRINT := samsung/gts10pwifixx/gts10pwifi:15/AP3A.240905.015.A2/X820XXU3BYE1:user/release-keys
