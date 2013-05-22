# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# GPS
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/etc/gps-cdma.conf:system/etc/gps.conf

# Common Applications
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/Torch.apk:system/app/Torch.apk

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=2
