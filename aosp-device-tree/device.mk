#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    apanic_annotate.sh \
    apanic_copy.sh \
    apanic_save.sh \
    cpu_stats.sh \
    hardware_revisions.sh \
    init.media.specified_para.sh \
    init.mmi.block_perm.sh \
    init.mmi.boot.sh \
    init.mmi.touch.sh \
    init.mmi.usb.sh \
    init.oem.hw.sh \
    mx_log_collection.sh \
    mx_logger.sh \
    mx_logger_dump.sh \
    pstore_annotate.sh \
    scsc_enable_flight_mode.sh \
    scsc_get_platform_info.sh \
    wlan_debug_level.sh \
    wlbt_onoff.sh \

PRODUCT_PACKAGES += \
    fstab.mptool \
    init.mmi.debug.rc \
    init.mmi.overlay.rc \
    init.mmi.tcmd.rc \
    init.recovery.exynos9610.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/motorola/troika_sprout/troika_sprout-vendor.mk)
