#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kiev device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_kiev
PRODUCT_DEVICE := kiev
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G
PRODUCT_MANUFACTURER := motorola
PRODUCT_SYSTEM_NAME := kiev_retail

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="kiev_retail-user 11 RZKS31.Q3-45-16-8-19 cc8087 release-keys" \
    BuildFingerprint=motorola/kiev_retail/kiev:11/RZKS31.Q3-45-16-8-19/cc8087:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
