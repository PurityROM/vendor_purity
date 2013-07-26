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

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_FINGERPRINT="google/takju/maguro:4.3/JWR66V/737497:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.mcc_fallback=262

# Inherit media effect blobs
-include vendor/purity/config/common_media_effects.mk

# Include gsm apn list
-include vendor/purity/config/gsm.mk

