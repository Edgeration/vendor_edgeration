# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Edgeration System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.version=$(EDGERATION_VERSION) \
    ro.edgeration.fingerprint=$(ROM_FINGERPRINT) \
    ro.edgeration.releasetype=$(EDGERATION_BUILDTYPE) \
    ro.edgeration.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(EDGERATION_VERSION) \
    ro.edgerationlegal.url=https://lineageos.org/legal

# Edgeration Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.display.version=$(EDGERATION_DISPLAY_VERSION)

# Edgeration Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.build.version.plat.sdk=$(EDGERATION_PLATFORM_SDK_VERSION)

# Edgeration Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.build.version.plat.rev=$(EDGERATION_PLATFORM_REV)
