PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    ueventd.qcom.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_CHARACTERISTICS := nosdcard

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
   fs_config_files

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true
