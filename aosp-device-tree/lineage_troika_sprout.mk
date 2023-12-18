#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from troika_sprout device
$(call inherit-product, device/motorola/troika_sprout/device.mk)

PRODUCT_DEVICE := troika_sprout
PRODUCT_NAME := lineage_troika_sprout
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one action
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="troika_retail-user 11 RSBS31.Q1-48-36-26 9a0b6f release-keys"

BUILD_FINGERPRINT := motorola/troika_retail/troika_sprout:11/RSBS31.Q1-48-36-26/9a0b6f:user/release-keys
