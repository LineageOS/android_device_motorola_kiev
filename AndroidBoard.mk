#
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

INSTALLED_KERNEL_TARGET := $(PRODUCT_OUT)/kernel
recovery_uncompressed_ramdisk := $(PRODUCT_OUT)/ramdisk-recovery.cpio

RECOVERY_KMOD_TARGETS := \
    utags.ko \
    mmi_annotate.ko \
    mmi_info.ko \
    tzlog_dump.ko \
    mmi_sys_temp.ko \
    qpnp-power-on-mmi.ko \
    wl2864c.ko \
    qpnp-smbcharger-mmi.ko \
    mcDrvModule.ko \
    exfat.ko \
    aw8624.ko \
    sensors_class.ko \
    mmi_relay.ko \
    sx933x_sar.ko \
    touchscreen_mmi.ko \
    focaltech_0flash_mmi.ko \
    mmi_sigprint.ko

INSTALLED_RECOVERY_KMOD_TARGETS := $(RECOVERY_KMOD_TARGETS:%=$(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/%)
$(INSTALLED_RECOVERY_KMOD_TARGETS): $(INSTALLED_KERNEL_TARGET)
	echo -e ${CL_GRN}"Copying kernel modules to recovery"${CL_RST}
	@mkdir -p $(dir $@)
	cp $(@F:%=$(TARGET_OUT_VENDOR)/lib/modules/%) $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/

RECOVERY_FIRMWARE_TARGETS := \
    focaltech-csot-ft8756-05-0000-kiev.bin \
    focaltech-tm-ft8756-07-0000-kiev.bin

INSTALLED_RECOVERY_FIRMWARE_TARGETS := $(RECOVERY_FIRMWARE_TARGETS:%=$(TARGET_RECOVERY_ROOT_OUT)/vendor/firmware/%)
$(INSTALLED_RECOVERY_FIRMWARE_TARGETS): $(INSTALLED_KERNEL_TARGET)
	echo -e ${CL_GRN}"Copying firmware to recovery"${CL_RST}
	@mkdir -p $(dir $@)
	cp $(@F:%=$(TARGET_OUT_VENDOR)/firmware/%) $(TARGET_RECOVERY_ROOT_OUT)/vendor/firmware/

$(recovery_uncompressed_ramdisk): $(INSTALLED_RECOVERY_KMOD_TARGETS) $(INSTALLED_RECOVERY_FIRMWARE_TARGETS)
