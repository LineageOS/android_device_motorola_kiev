#
# Properties for Kiev
#

# Audio - ACDB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.calfile0=/vendor/etc/acdbdata/Bluetooth_cal.acdb \
    persist.vendor.audio.calfile1=/vendor/etc/acdbdata/General_cal.acdb \
    persist.vendor.audio.calfile2=/vendor/etc/acdbdata/Global_cal.acdb \
    persist.vendor.audio.calfile3=/vendor/etc/acdbdata/Handset_cal.acdb \
    persist.vendor.audio.calfile4=/vendor/etc/acdbdata/Hdmi_cal.acdb \
    persist.vendor.audio.calfile5=/vendor/etc/acdbdata/Headset_cal.acdb \
    persist.vendor.audio.calfile6=/vendor/etc/acdbdata/Speaker_cal.acdb

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=2 \
    audio.deep_buffer.media=true \
    audio.offload.disable=false \
    audio.offload.video=false \
    tunnel.audio.encode=true \
    qcom.hw.aac.encoder=true \
    persist.audio.endcall.delay=250 \
    persist.vendor.audio.dualmic.config=endfire \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicecomm=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=false \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.adm.buffering.ms=2 \
    vendor.audio.cts.media=false \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.enable.mirrorlink=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hal.output.suspend.supported=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.noisy.broadcast.delay=600 \
    vendor.audio.offload.buffer.size.kb=32 \
    vendor.audio.offload.gapless.enabled=false \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.pstimeout.secs=3 \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.snd_card.open.retries=50 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=false \
    vendor.audio.use.sw.ape.decoder=false \
    vendor.audio_hal.in_period_size=144 \
    vendor.audio_hal.period_multiplier=3 \
    vendor.audio_hal.period_size=240 \
    vendor.voice.path.for.pcm.voip=true
    use.voice.path.for.pcm.voip=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    audio.offload.min.duration.secs=60 \
    persist.vendor.audio.hac.enable=false \
    ro.audio.monitorRotation=true

PRODUCT_ODM_PROPERTIES += \
    vendor.audio.feature.a2dp_offload.enable=true \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.battery_listener.enable=true \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.compress_in.enable=true \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.concurrent_capture.enable=true \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=true \
    vendor.audio.feature.ext_hw_plugin.enable=true \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=false \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=true \
    vendor.audio.feature.keep_alive.enable=true \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.snd_mon.enable=true \
    vendor.audio.feature.spkr_prot.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=true \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    net.bt.name='Moto G 5G' \
    ro.bluetooth.a2dp_offload.supported=true \
    ro.vendor.bluetooth.wipower=false \
    persist.sys.fflag.override.settings_bluetooth_hearing_aid=true \
    persist.vendor.bt.aac_vbr_frm_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.aptxadaptiver2_1_support=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.qcom.bluetooth.scram.enabled=false \
    persist.vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.qcom.bluetooth.twsp_state.enabled=false \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.bluetooth.a2dp_offload.disabled=false \
    persist.bluetooth.a2dp_offload.cap=sbc-aptx-aptxtws-aptxhd-aac-ldac

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.physical.num=4 \
    persist.vendor.camera.privapp.list=com.motorola.camera3

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# CNE
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.cne.feature=1

# CoreSight STM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.debug.coresight.config=stm-events

# Crypto
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.crypto.volume.metadata.method=dm-default-key \
    ro.crypto.volume.options=::v2

# Cutout
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_hide_display_cutout=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heaptargetutilization=0.75

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.vulkan=adreno \
    ro.hardware.egl=adreno \
    vendor.display.comp_mask=0 \
    vendor.display.disable_excl_rect=0 \
    vendor.display.disable_excl_rect_partial_fb=1 \
    vendor.display.disable_scaler=0 \
    vendor.display.enable_async_powermode=1  \
    vendor.display.enable_optimize_refresh=1 \
    vendor.display.enable_posted_start_dyn=1 \
    vendor.display.disable_hw_recovery_dump=1 \
    vendor.display.disable_idle_time_hdr=1 \
    vendor.display.disable_idle_time_video=1 \
    vendor.display.disable_offline_rotator=1 \
    vendor.display.use_smooth_motion=1

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=11 \
    persist.vendor.dpmhalservice.enable=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Firmware
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.hw.modem_version=.

# FM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.fm.use_audio_session=true

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# GPS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.overlay.izat.optin=rro

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=0 \
    debug.sf.latch_unsignaled=1 \
    persist.demo.hdmirotationlock=false \
    persist.sys.sf.color_mode=0 \
    persist.sys.sf.color_saturation=1.0 \
    persist.sys.sf.force_brightness_capability=1 \
    persist.sys.sf.native_mode=1 \
    debug.sf.enable_gl_backpressure=1 \
    ro.opengles.version=196610 \
    ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.lito.api30 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.disable_ubwc=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms=4000 \
    ro.surface_flinger.set_touch_timer_ms=4000 \
    ro.surface_flinger.set_display_power_timer_ms=1000

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    debug.sf.enable_hwc_vds=1

# HDR
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.hdr.config=/vendor/etc/hdr_tm_config.xml

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1

PRODUCT_PRODUCT_PROPERTIES += \
    ro.qcom.ims.use_moto_vt_ext=true

# Incremental FS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.incremental.enable=1

# Keymaster 4.0 - TDES support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true

# Low-Memory Killer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.thrashing_limit=60 \
    ro.lmk.swap_free_low_percentage=10 \
    ro.lmk.psi_partial_stall_ms=50 \
    ro.lmk.swap_util_max=90 \
    ro.lmk.pgscan_limit=3000 \
    ro.lmk.file_low_percentage=20 \
    ro.lmk.threshold_decay=50 \
    ro.config.use_compaction=true \
    ro.config.compact_action_1=4 \
    ro.config.compact_action_2=2 \
    ro.lowmemdetector.psi_low_stall_us=100000 \
    ro.lowmemdetector.psi_medium_stall_us=150000 \
    ro.lowmemdetector.psi_high_stall_us=200000

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=1 \
    debug.stagefright.omx_default_rank=0 \
    media.aac_51_output_enabled=true \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    media.recorder.show_manufacturer_and_model=true \
    mmp.enable.3g2=true \
    persist.mm.enable.prefetch=true \
    persist.vendor.media.recorder.bt709=true
    vendor.mm.en.sec.smoothstreaming=false \
    vendor.mm.enable.qcom_parser=16777215

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    av.offload.enable=true \
    ro.media.recorder-max-base-layer-fps=60 \
    vendor.swvdec.log.level=1 \
    vendor.vidc.debug.level=1

PRODUCT_PRODUCT_PROPERTIES += \
    media.stagefright.thumbnail.prefer_hw_codecs=true

# Memory optimizations
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.qti.sys.fw.bservice_age=5000 \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.vendor.qti.sys.fw.bservice_limit=8

# Netflix
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.netflix.bsp_rev=Q7250-19133-1

# NFC
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.nfc.port=I2C

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# PASR
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.power.pasr.enabled=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.qti.sys.fw.bg_apps_limit=60

# Qualcomm System Daemon
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcomsysd.enabled=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.vendorprefix=/vendor \
    ro.vendor.radio.imei.sv=5 \
    ro.vendor.radio.mbn.load_special_sku=1 \
    persist.radio.call_type=1 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.multisim.config=dsds \
    persist.rcs.supported=1 \
    persist.vendor.eab.supported=1 \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.ims.cam_sensor_delay=20 \
    persist.vendor.ims.display_delay=40 \
    persist.vendor.ims.playout_delay=50 \
    persist.vendor.lte.pco_supported=true \
    persist.vendor.radio.0x9e_not_callname=1 \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.dfr_mode_set=1 \
    persist.vendor.radio.enable_temp_dds=true \
    persist.vendor.radio.enableadvancedscan=true \
    persist.vendor.radio.eri64_as_home=1 \
    persist.vendor.radio.fi_supported=1 \
    persist.vendor.radio.flexmap_type=none \
    persist.vendor.radio.force_get_pref=1 \
    persist.vendor.radio.hidl_dev_service=1 \
    persist.vendor.radio.is_wps_enabled=true \
    persist.vendor.radio.jbims=1 \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.manual_nw_rej_ct=1 \
    persist.vendor.radio.msgtunnel.start=true \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.oem_ind_to_both=0 \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.vendor.radio.qcril_uim_vcc_feature=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sar_sensor=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.snapshot_timer=22 \
    persist.vendor.radio.snapshot_enabled=1 \
    persist.vendor.radio.sw_mbn_update=0 \
    persist.vendor.radio.start_ota_daemon=0 \
    persist.vendor.rcs.presence.provision=0 \
    persist.vendor.vt.supported=1 \
    wifi.aware.interface=wifi-aware0

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    DEVICE_PROVISIONED=1 \
    persist.sys.fflag.override.settings_provider_model=false \
    persist.vendor.data.mode=concurrent \
    ril.subscription.types=RUIM \
    ro.telephony.default_network=27,10 \
    ro.vendor.use_data_netmgrd=true \
    telephony.lteOnCdmaDevice=1,1

# RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0 \
    vendor.usb.dpl.inst.name=dpl \
    vendor.usb.qdss.inst.name=qdss_sw \
    vendor.usb.rmnet.func.name=gsi \
    vendor.usb.rmnet.inst.name=rmnet \
    vendor.usb.rndis.func.name=gsi \
    vendor.usb.use_ffs_mtp=1 \
    vendor.usb.use_gadget_hal=0

# Sensors
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.sensors.enable.mag_filter=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.use_color_management=true \
    ro.surface_flinger.wcg_composition_dataspace=143261696 \
    ro.surface_flinger.protected_contents=true

PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=20500000 \
    debug.sf.early.sf.duration=16000000 \
    debug.sf.early.app.duration=33500000 \
    debug.sf.earlyGl.sf.duration=13500000 \
    debug.sf.earlyGl.app.duration=38000000

# Sensor
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.sensors.enable.mag_filter=true \
    persist.vendor.sensors.allow_non_default_discovery=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.hal_trigger_ssr=false \
    persist.vendor.sensors.odl.adsp=true \
    ro.vendor.hw.thermal_skin_val=battery \
    ro.vendor.sensors.glance_approach=false \
    ro.vendor.sensors.mot_ltv=true

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true

# Vendor Versioning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.version.qcom=LA.UM.9.12.r1-12500-SMxx50.0

# WiFi
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    config.disable_rtt=true

# WFD
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Zygote
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    zygote.critical_window.minute=10
