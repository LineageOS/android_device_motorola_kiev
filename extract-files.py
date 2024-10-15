#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixups,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'vendor/motorola/sm7250-common',
    'vendor/qcom/opensource/display',
]

blob_fixups: blob_fixups_user_type = {
    'vendor/bin/charge_only_mode': blob_fixup()
        .add_needed('libmemset_shim.so'),
    'vendor/lib/hw/audio.primary.lito-moto.so': blob_fixup()
        .replace_needed('android.hardware.power-V1-ndk_platform.so', 'android.hardware.power-V1-ndk.so')
        .replace_needed('libtinyalsa.so', 'libtinyalsa-moto.so'),
    ('vendor/lib/hw/sound_trigger.primary.lito.so', 'vendor/lib/soundfx/libmmieffectswrapper.so', 'vendor/lib/soundfx/libspeakerbundle.so'): blob_fixup()
        .replace_needed('libtinyalsa.so', 'libtinyalsa-moto.so'),
    ('vendor/lib64/com.qti.feature2.gs.so', 'vendor/lib64/com.qti.feature2.gs.bitra.so', 'vendor/lib64/hw/com.qti.chi.override.so', 'vendor/lib64/hw/com.qti.chi.override.bitra.so'): blob_fixup()
        .binary_regex_replace(b'camera.mot.is.coming.cts', b'vendor.camera.coming.cts'),
    'vendor/lib64/libvidhance.so': blob_fixup()
        .add_needed('libcomparetf2_shim.so'),
    ('vendor/lib64/vendor.qti.hardware.camera.postproc@1.0-service-impl.so', 'vendor/lib64/vendor.qti.hardware.camera.postproc@1.0-service-impl.bitra.so'): blob_fixup()
        .sig_replace('CC 0A 00 94', '1F 20 03 D5'),
}  # fmt: skip

module = ExtractUtilsModule(
    'kiev',
    'motorola',
    namespace_imports=namespace_imports,
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    add_firmware_proprietary_file=False,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(
        module, 'sm7250-common', module.vendor
    )
    utils.run()
