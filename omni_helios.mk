#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
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
    PRIVATE_BUILD_DESC="twrp_helios-eng 99.87.36 SP2A.220405.004 eng.runner.20250126.035628 test-keys"

BUILD_FINGERPRINT := Infinix/twrp_helios/helios:99.87.36/SP2A.220405.004/runner01260353:eng/test-keys
