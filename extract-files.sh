#!/bin/bash
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        # Patch configureRpcThreadpool
        vendor/lib64/vendor.qti.hardware.camera.postproc@1.0-service-impl.so | vendor/lib64/vendor.qti.hardware.camera.postproc@1.0-service-impl.bitra.so)
            [ "$2" = "" ] && return 0
            hexdump -ve '1/1 "%.2X"' "${2}" | sed "s/CC0A0094/1F2003D5/g" | xxd -r -p > "${EXTRACT_TMP_DIR}/${1##*/}"
            mv "${EXTRACT_TMP_DIR}/${1##*/}" "${2}"
            ;;
        # memset shim
        vendor/bin/charge_only_mode)
            [ "$2" = "" ] && return 0
            "${PATCHELF}" --add-needed libmemset_shim.so "${2}"
            ;;
        # rename moto modified tinyalsa
        vendor/lib/libtinyalsa-moto.so)
            [ "$2" = "" ] && return 0
            "${PATCHELF}" --set-soname libtinyalsa-moto.so "${2}"
            ;;
        # rename moto modified tinyalsa
        vendor/lib/hw/sound_trigger.primary.lito.so | vendor/lib/soundfx/libmmieffectswrapper.so | vendor/lib/soundfx/libspeakerbundle.so)
            [ "$2" = "" ] && return 0
            "${PATCHELF}" --replace-needed libtinyalsa.so libtinyalsa-moto.so "${2}"
            ;;
        # rename moto modified primary audio to not conflict with source built
        vendor/lib/hw/audio.primary.lito-moto.so)
            [ "$2" = "" ] && return 0
            "${PATCHELF}" --set-soname audio.primary.lito-moto.so "${2}"
            "${PATCHELF}" --replace-needed libtinyalsa.so libtinyalsa-moto.so "${2}"
            "${PATCHELF}" --replace-needed android.hardware.power-V1-ndk_platform.so android.hardware.power-V1-ndk.so "${2}"
            ;;
        # __lttf2 shim
        vendor/lib64/libvidhance.so)
            [ "$2" = "" ] && return 0
            "${PATCHELF}" --print-needed "${2}" |grep -q libcomparetf2_shim || "${PATCHELF}" --add-needed libcomparetf2_shim.so "${2}"
            ;;
        # Rename camera.mot.is.coming.cts
        vendor/lib64/com.qti.feature2.gs.so | \
            vendor/lib64/com.qti.feature2.gs.bitra.so | \
            vendor/lib64/hw/com.qti.chi.override.so | \
            vendor/lib64/hw/com.qti.chi.override.bitra.so)
            [ "$2" = "" ] && return 0
            sed -i "s/camera.mot.is.coming.cts/vendor.camera.coming.cts/g" "${2}"
            ;;
        *)
            return 1
            ;;
    esac

    return 0
}

function blob_fixup_dry() {
    blob_fixup "$1" ""
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=kiev
export DEVICE_COMMON=sm7250-common
export VENDOR=motorola
export VENDOR_COMMON=${VENDOR}

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
