#
# Copyright (C) 2023 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Matrixx configurations - FULL GAPPS
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product-if-exists, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := matrixx_sky
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 12 5G
PRODUCT_MANUFACTURER := Xiaomi

# ---- PERMANENT FIX - FULL GAPPS + CERTIFIED + SECURITY ----
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
WITH_GAPPS := true
TARGET_BUILD_GAPPS := true
MATRIXX_BUILD_TYPE := GAPPS
WITH_GMS := true
GAPPS_VARIANT := full

# Release-keys for Play Store Certified (test-keys se certified nahi aayega)
# PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/matrixx/private-keys/releasekey

# Security & Govt Apps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=0 \
    ro.secure=1 \
    ro.build.selinux=1 \
    ro.adb.secure=0
