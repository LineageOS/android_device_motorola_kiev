#
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/motorola/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/kiev

# Kernel
TARGET_KERNEL_CONFIG := vendor/kiev_defconfig

# Audio
AUDIO_FEATURE_ENABLED_A2DP_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AHAL_EXT := false

# Display
TARGET_SCREEN_DENSITY := 420

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Init
SOONG_CONFIG_NAMESPACES += MOTOROLA_LITO_INIT
SOONG_CONFIG_MOTOROLA_LITO_INIT := DEVICE_LIB
SOONG_CONFIG_MOTOROLA_LITO_INIT_DEVICE_LIB := //$(DEVICE_PATH):libinit_kiev

# Lineage Health
TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_BYPASS := false

# ODM
ODM_MANIFEST_SKUS := \
    dn \
    n \
    np

ODM_MANIFEST_DN_FILES := $(DEVICE_PATH)/odm/manifest_dn.xml
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/odm/manifest_n.xml
ODM_MANIFEST_NP_FILES := $(DEVICE_PATH)/odm/manifest_np.xml

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# inherit from the proprietary version
include vendor/motorola/kiev/BoardConfigVendor.mk
