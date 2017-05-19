PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/modules/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/modules/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/modules/gps/etc/sap.conf:system/etc/sap.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
