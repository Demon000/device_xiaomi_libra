# Display HAL
PRODUCT_PACKAGES += \
    copybit.msm8992 \
    gralloc.msm8992 \
    hwcomposer.msm8992 \
    liboverlay \
    libqdutils \
    libqdMetaData \
    memtrack.msm8992

# QC CABL feature
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0

# MSM8992 HAL settings
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    persist.debug.wfd.enable=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    persist.mdpcomp.4k2kSplit=1 \
    persist.mdpcomp_perfhint=50 \
    persist.metadata_dynfps.disable=false \
    persist.sys.wfd.virtual=0 \
    ro.opengles.version=196609

# OpenGLES Android Extension
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml
