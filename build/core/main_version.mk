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
    ro.edgeration.build.version=$(EDGERATION_NUM_VER) \
    ro.edgeration.shortver=$(EDGERATION_BUILD_VERSION) \
    ro.modversion=$(EDGERATION_VERSION) \

# Edgeration Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.display.version=$(EDGERATION_DISPLAY_VERSION)

# Edgeration Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.build.version.plat.sdk=$(EDGERATION_PLATFORM_SDK_VERSION)

# Edgeration Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.edgeration.build.version.plat.rev=$(EDGERATION_PLATFORM_REV)

# EdgeRation OTA Packages
OTA_PACKAGES ?= false

ADDITIONAL_BUILD_PROPERTIES += \
    org.edgeration.ota.build=$(OTA_PACKAGES) \
    org.edgeration.device=$(TARGET_DEVICE)
