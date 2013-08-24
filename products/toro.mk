# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/purity/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := purity_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JSS15J/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JSS15J 737497 release-keys"

# Inherit CDMA common stuff
$(call inherit-product, vendor/purity/config/cdma.mk)

# Copy vzw login 
PRODUCT_COPY_FILES +=  \
    vendor/purity/proprietary/toro/app/VerizonLogin.apk:system/app/VerizonLogin.apk \
    vendor/purity/proprietary/toro/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/purity/proprietary/toro/app/VerizonSSO.apk:system/app/VerizonSSO.apk

# Inherit media effect blobs
-include vendor/purity/config/common_media_effects.mk
