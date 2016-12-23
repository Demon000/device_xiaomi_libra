# Input device files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/configs/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
    device/xiaomi/libra/configs/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
