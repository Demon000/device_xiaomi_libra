# only include verity on user builds for CM
ifeq ($(TARGET_BUILD_VARIANT),user)
# setup dm-verity configs.
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/system
#PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)
endif

# OEM Unlock reporting
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.oem_unlock_supported=1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/etc/permissions/android.software.verified_boot.xml \
