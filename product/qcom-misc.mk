# limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-threads=4

# Force dex2oat not to use swap file
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false


PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=56 \
    ro.hwui.layer_cache_size=32 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=16 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

PRODUCT_PACKAGES += \
    keystore.msm8992 \
    gatekeeper.msm8992

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true
