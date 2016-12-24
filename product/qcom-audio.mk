PRODUCT_PACKAGES += \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libqcomvoiceprocessing

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# speaker protection
PRODUCT_PROPERTY_OVERRIDES += \
    persist.speaker.prot.enable=true \
    persist.spkr.cal.duration=0

# surround sound recording
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.ssr.3mic=false

# offload settings
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.gapless.enabled=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.video=true \
    audio.offload.pcm.16bit.enable=false \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.multiple.enabled=false

# voip
PRODUCT_PROPERTY_OVERRIDES += \
    use.voice.path.for.pcm.voip=true
