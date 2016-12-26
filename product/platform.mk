# ramdisk files
PRODUCT_PACKAGES += \
    fstab.qcom \
    qca6234-service.sh \
    ueventd.qcom.rc

# etc files
PRODUCT_PACKAGES += \
    usf_post_boot.sh \
    hcidump.sh \
    hsic.control.bt.sh

# sensor select
PRODUCT_PACKAGES += \
    sensor_select.sh

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
