#
# Copyright (C) 2020-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common DroidX UI stuff.
$(call inherit-product, vendor/droidx/config/common.mk)
TARGET_USES_MIUI_CAMERA := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_ENABLE_BLUR := true
IS_PHONE := true
TARGET_BUILD_APERTURE_CAMERA := false

PRODUCT_NAME := droidx_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
DROIDX_BUILDTYPE := COMMUNITY
DROIDX_GAPPS := true