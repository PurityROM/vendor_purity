# Inherit AOSP device configuration for manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/purity/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := purity_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.3/JWR66V/737497:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.3 JWR66V 737497 release-keys"

# Common Applications
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/Torch.apk:system/app/Torch.apk

# Inherit media effect blobs
-include vendor/purity/config/common_media_effects.mk

