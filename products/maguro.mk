# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/purity/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := purity_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66V 737497 release-keys"

# Applications
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/Torch.apk:system/app/Torch.apk

# Inherit media effect blobs
-include vendor/purity/config/common_media_effects.mk

