PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ril.subscription.types=RUIM

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    persist.data.tcp_rst_drop=true \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.data.large_tcp_window_size=true \
    ro.use_data_netmgrd=true \
    telephony.lteOnCdmaDevice=1 \
    persist.radio.data_no_toggle=1 \
    persist.radio.rat_on=combine \
    ro.telephony.default_network=20

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Multi SIM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds
