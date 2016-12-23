PRODUCT_PACKAGES += \
    sensors.libra

# Enable support for chinook sensorhub
TARGET_USES_CHINOOK_SENSORHUB := false

# Sensor & activity_recognition HAL
TARGET_USES_NANOHUB_SENSORHAL := true
NANOHUB_SENSORHAL_LID_STATE_ENABLED := true
NANOHUB_SENSORHAL_SENSORLIST := $(LOCAL_PATH)/sensorhal/sensorlist.cpp

PRODUCT_PACKAGES += \
    activity_recognition.libra \
    context_hub.default

ifeq ($(TARGET_USES_CHINOOK_SENSORHUB),true)
PRODUCT_PACKAGES += \
    sensortool.libra
else
PRODUCT_PACKAGES += \
    nanoapp_cmd
endif

# sensor utilities (only for userdebug and eng builds)
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += \
    nanotool \
    sensortest
endif
