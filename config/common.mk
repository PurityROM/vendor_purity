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

# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes

# DSPManager and libs necessary for it
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

PRODUCT_COPY_FILES += \
       vendor/purity/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# Common Applications
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/PurityWallpapers.apk:system/app/PurityWallpapers.apk \
    vendor/purity/proprietary/common/app/Superuser.apk:system/app/Superuser.apk

# Common Keyboard w/ Gestures
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/LatinIME.apk:system/app/LatinIME.apk \
    vendor/purity/proprietary/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so
 
# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/media/bootanimation.zip:system/media/bootanimation.zip

# Common Binary files
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/xbin/su:system/xbin/su

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
