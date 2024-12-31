#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from helios device
$(call inherit-product, device/infinix/helios/device.mk)

PRODUCT_DEVICE := helios
PRODUCT_NAME := omni_helios
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := HOT 20S
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_helios-eng 99.87.36 RQ1A.210205.004 eng.runner.20241016.132128 test-keys"

BUILD_FINGERPRINT := Infinix/fox_helios/helios:99.87.36/RQ1A.210205.004/runner10161319:eng/test-keys
