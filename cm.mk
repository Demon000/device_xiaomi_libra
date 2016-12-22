# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/aosp_libra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_libra
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=libra \
    BUILD_FINGERPRINT="google/libra/libra:7.1.1/NMF26F/3425388:user/release-keys" \
    PRIVATE_BUILD_DESC="libra-user 7.1.1 NMF26F 3425388 release-keys"
