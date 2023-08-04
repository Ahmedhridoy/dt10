#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common rr stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
BUILD_RR_WALLPAPERS := true

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
        TARGET_DEVICE="lavender" \
        PRODUCT_NAME="lavender" \
	PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V11.0.1.0.QFGMIXM release-keys" 

# Device identifier
PRODUCT_NAME := rr_lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
