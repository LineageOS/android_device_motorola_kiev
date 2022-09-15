#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=kiev
VENDOR=motorola

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

function blob_fixup() {
    case "${1}" in
    # imsvt shim
    system_ext/lib64/lib-imsvideocodec.so | system_ext/lib64/libimsmedia_jni.so)
        "${PATCHELF}" --add-needed lib-imsvt_shim.so "${2}"
        ;;
    # memset shim
    vendor/bin/charge_only_mode)
        "${PATCHELF}" --add-needed libmemset_shim.so "${2}"
        ;;
    # Prebuilt Audio
    vendor/lib/hw/audio.primary.lito.so)
        "${PATCHELF}" --replace-needed android.hardware.power-V1-ndk_platform.so android.hardware.power-V1-ndk.so "${2}"
        ;;
    # WFD
    system_ext/lib/libwfdnative.so | system_ext/lib64/libwfdnative.so)
        sed -i "s/android.hidl.base@1.0.so/libhidlbase.so\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00/" "${2}"
        ;;
    # Fix xml version
    product/etc/permissions/vendor.qti.hardware.data.connection-V1.0-java.xml | product/etc/permissions/vendor.qti.hardware.data.connection-V1.1-java.xml)
        sed -i 's/xml version="2.0"/xml version="1.0"/' "${2}"
        ;;
    system_ext/etc/permissions/moto-telephony.xml)
        sed -i "s|system|system/system_ext|" "${2}"
        ;;
    # Patch configureRpcThreadpool
    vendor/lib64/vendor.qti.hardware.camera.postproc@1.0-service-impl.so | vendor/lib64/vendor.qti.hardware.camera.postproc@1.0-service-impl.bitra.so)
        hexdump -ve '1/1 "%.2X"' "${2}" | sed "s/CC0A0094/1F2003D5/g" | xxd -r -p > "${TMPDIR}/${1##*/}"
        mv "${TMPDIR}/${1##*/}" "${2}"
        ;;
    esac
}

# Reinitialize the helper for device
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
