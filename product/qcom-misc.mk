PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/etc/msm_irqbalance.conf

PRODUCT_PACKAGES += \
    libtinyxml

# try not to use big cores during dexopt
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4
