# ramdisk files
PRODUCT_PACKAGES += \
    fstab.qcom \
    qca6234-service.sh \
    ueventd.qcom.rc

# etc files
PRODUCT_PACKAGES += \
    usf_post_boot.sh \
    hsic.control.bt.sh

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# compatibility
PRODUCT_PACKAGES += \
    libboringssl-compat \
    libshim_common \
    libshim_camera
