# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Edgeration System Version
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.edgeration.version=$(EDGERATION_VERSION) \
    ro.edgeration.fingerprint=$(ROM_FINGERPRINT) \
    ro.edgeration.releasetype=$(EDGERATION_BUILDTYPE) \
    ro.edgeration.build.version=$(EDGERATION_NUM_VER) \
    ro.modversion=$(EDGERATION_VERSION) \
    ro.edgerationlegal.url=https://lineageos.org/legal

# Edgeration Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.edgeration.display.version=$(EDGERATION_DISPLAY_VERSION)

# Edgeration Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.edgeration.build.version.plat.sdk=$(EDGERATION_PLATFORM_SDK_VERSION)

# Edgeration Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.edgeration.build.version.plat.rev=$(EDGERATION_PLATFORM_REV)

# EdgeRation OTA Packages
OTA_PACKAGES ?= false

ADDITIONAL_SYSTEM_PROPERTIES  += \
    org.edgeration.ota.build=$(OTA_PACKAGES) \
    org.edgeration.device=$(TARGET_DEVICE)
