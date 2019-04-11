#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/perseus


#System as root

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := perseus


# Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 5


# Kernel
TARGET_KERNEL_CONFIG := perseus_defconfig


# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# NFC
TARGET_USES_NQ_NFC := true


# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event3"


# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Treble
BOARD_VNDK_RUNTIME_DISABLE := false


# Inherit from the proprietary version
-include vendor/xiaomi/perseus/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
