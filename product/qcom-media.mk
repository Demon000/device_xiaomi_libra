PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.perf.mode=2 \
    vidc.enc.dcvs.extra-buff-count=2
    media.aac_51_output_enabled=true
