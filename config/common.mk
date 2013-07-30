# Generic product
PRODUCT_NAME := purity
PRODUCT_BRAND := purity
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/purity/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1

# SIM Toolkit
PRODUCT_PACKAGES := \
    Stk

# Common Keyboard w/ Gestures
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/purity/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
 
# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/media/bootanimation.zip:system/media/bootanimation.zip

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
