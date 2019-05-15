#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


$(call inherit-product, device/xiaomi/perseus/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_perseus
PRODUCT_DEVICE := perseus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MIX 3
PRODUCT_MANUFACTURER := Xiaomi


BUILD_FINGERPRINT := "Xiaomi/perseus/perseus:9/PKQ1.180729.001/9.3.28:user/release-keys"

#TODO: whats this?
#PRODUCT_BUILD_PROP_OVERRIDES += \
#   PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys" \  #  PRODUCT_NAME="dipper" \
# TARGET_DEVICE="dipper"

#TODO What is this 
#PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
