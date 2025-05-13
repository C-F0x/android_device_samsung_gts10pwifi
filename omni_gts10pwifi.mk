#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gts10pwifi device
$(call inherit-product, device/samsung/gts10pwifi/device.mk)

PRODUCT_DEVICE := gts10pwifi
PRODUCT_NAME := omni_gts10pwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X820
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts10pwifixx-user 14 UP1A.231005.007 X820XXU2BYD7 release-keys"

BUILD_FINGERPRINT := samsung/gts10pwifixx/gts10pwifi:14/UP1A.231005.007/X820XXU2BYD7:user/release-keys
