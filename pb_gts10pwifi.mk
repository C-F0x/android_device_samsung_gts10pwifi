# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk) -- only for 64bit phones
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Inherit from device
$(call inherit-product, device/samsung/gts10pwifi/device.mk) -- path to main device makefile

# Inherit common product files.
$(call inherit-product, vendor/pb/config/common.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := 
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gts10pwifi
PRODUCT_NAME := pb_gts10pwifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-X820
TARGET_VENDOR := 
#PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts10pwifixx-user 15 AP3A.240905.015.A2 X820XXU3BYE1 release-keys"

#BUILD_FINGERPRINT := samsung/gts10pwifixx/gts10pwifi:15/AP3A.240905.015.A2/X820XXU3BYE1:user/release-keys