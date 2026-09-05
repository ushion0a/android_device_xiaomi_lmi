#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Axion device configuration
AXION_MAINTAINER := ushion0a
AXION_PROCESSOR := Snapdragon_865
AXION_CAMERA_REAR_INFO := 64,13,5,2
AXION_CAMERA_FRONT_INFO := 20

# Balanced Kona defaults: keep ATMC disabled and use the lmi runtime controls.
TARGET_SUPPORTED_REFRESH_RATES := 60
TARGET_DISABLES_LIBPERF := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
HBM_SUPPORTED := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_INCLUDE_AXFX := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lmi-user 12 RKQ1.211001.001 V14.0.1.0.SJKMIXM release-keys" \
    BuildFingerprint=Redmi/lmi/lmi:12/RKQ1.211001.001/V14.0.1.0.SJKMIXM:user/release-keys
