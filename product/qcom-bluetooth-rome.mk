# Set bluetooth soc to rome
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=rome

# Set Bluetooth transport initialization timeout
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.enable_timeout_ms=12000

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/persist/bdaddr.txt

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
