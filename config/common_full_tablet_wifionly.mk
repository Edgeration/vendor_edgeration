# Inherit full common Edgeration stuff
$(call inherit-product, vendor/edgeration/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Edgeration LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/edgeration/overlay/dictionaries
