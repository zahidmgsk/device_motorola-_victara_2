# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Inherit from victara device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := victara
PRODUCT_NAME := revengeos_victara
PRODUCT_BRAND := motorola
PRODUCT_MODEL := victara
PRODUCT_RELEASE_NAME := MOTO X (2014)
PRODUCT_MANUFACTURER := motorola

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Use Gapps
#WITH_GAPPS := false
#TARGET_GAPPS_ARCH := arm
#IS_PHONE := true

# AospExtended-BuildType
#EXTENDED_BUILD_TYPE := OFFICIAL
