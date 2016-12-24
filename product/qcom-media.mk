# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw

PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true \
    media.aac_51_output_enabled=true \
    vidc.debug.level=1 \
    vidc.enc.dcvs.extra-buff-count=2
