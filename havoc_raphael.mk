#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Build Official
export HAVOC_BUILD_TYPE=Official

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := havoc_raphael

BUILD_FINGERPRINT := "Xiaomi/raphaelin/raphaelin:9/PKQ1.181121.001/V10.3.3.0.PFKINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit from custom vendor
$(call inherit-product, vendor/MiuiCamera/config.mk)
