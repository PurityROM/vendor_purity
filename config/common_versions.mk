# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JDQ39E BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Additional properties
PRODUCT_VERSION_MAJOR = 5
PRODUCT_VERSION_MINOR = 4.3

PRODUCT_PROPERTY_OVERRIDES += \
ro.romversion=Purity-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
