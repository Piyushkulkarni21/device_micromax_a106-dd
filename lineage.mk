# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/micromax/a106/cm_giraffe.mk)

LOCAL_PATH := device/micromax/a106

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0.1/MMB29M/2419427:user/release-keys PRIVATE_BUILD_DESC="giraffe-user 6.0.1 MMB29M 2419427 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="a106"

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_NAME := lineage_a106
PRODUCT_DEVICE := a106
PRODUCT_BRAND := micromax
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := a106

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Inherit some common CM stuff.

CM_BUILD := a106

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=1

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
