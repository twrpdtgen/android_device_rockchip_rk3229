#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3229 device
$(call inherit-product, device/rockchip/rk3229/device.mk)

PRODUCT_DEVICE := rk3229
PRODUCT_NAME := omni_rk3229
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := HK1 MINI
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-acme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3229-userdebug 9 PQ1A.190105.004 112503 test-keys"

BUILD_FINGERPRINT := rockchip/rk3229/rk3229:9/PQ1A.190105.004/user03131123:userdebug/test-keys
