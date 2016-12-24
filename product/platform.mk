PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    ueventd.qcom.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
