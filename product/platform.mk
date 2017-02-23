# ramdisk files
PRODUCT_PACKAGES += \
    fstab.qcom \
    ueventd.qcom.rc

# etc files
PRODUCT_PACKAGES += \
    usf_post_boot.sh

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
