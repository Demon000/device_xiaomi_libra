# camera wrapper
PRODUCT_PACKAGES += \
    camera.msm8992

# compatibility
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true
