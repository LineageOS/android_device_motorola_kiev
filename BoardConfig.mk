#
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/motorola/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/kiev

# Kernel
TARGET_KERNEL_CONFIG := vendor/kiev_defconfig vendor/debugfs.config

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

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Copy to recovery
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := \
    utags \
    mmi_annotate \
    mmi_info \
    tzlog_dump \
    mmi_sys_temp \
    qpnp-power-on-mmi \
    wl2864c \
    qpnp-smbcharger-mmi \
    mcDrvModule \
    exfat \
    aw8624 \
    sensors_class \
    mmi_relay \
    sx933x_sar \
    touchscreen_mmi \
    focaltech_0flash_mmi

RECOVERY_KERNEL_MODULES := $(addsuffix .ko,$(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD))

# Security
VENDOR_SECURITY_PATCH := 2023-03-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# inherit from the proprietary version
include vendor/motorola/kiev/BoardConfigVendor.mk
