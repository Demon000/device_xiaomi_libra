PRODUCT_PACKAGES += \
    gralloc.msm8992 \
    hwcomposer.msm8992 \
    libgenlock \
    memtrack.msm8992

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196610

# OpenGLES Android Extension
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# For SPN display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
