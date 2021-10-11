# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2021 Edgeration
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

EDGERATION_NUM_VER := 0.2
EDGERATION_CODENAME := Alpha
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)

EDGERATION_BUILD_TYPE ?= UNOFFICIAL

TARGET_PRODUCT_SHORT := $(subst edgeration_,,$(EDGERATION_BUILD_TYPE))

ifeq ($(EDGERATION_BUILD_TYPE), OFFICIAL)
  LIST = $(shell cat build/make/.edgeration.devices)
    ifeq ($(filter $(EDGERATION_BUILD), $(LIST)), $(EDGERATION_BUILD))
      IS_OFFICIAL=true
      EDGERATION_BUILD_TYPE := OFFICIAL
    endif
    ifneq ($(IS_OFFICIAL), true)
      EDGERATION_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(EDGERATION_BUILD)")
    endif
endif

EDGERATION_BUILD_VERSION := $(EDGERATION_CODENAME)-$(EDGERATION_NUM_VER)
EDGERATION_VERSION := $(EDGERATION_BUILD_VERSION)-$(EDGERATION_BUILD_TYPE)-$(BUILD_DATE)-$(EDGERATION_BUILD)
ROM_FINGERPRINT := Edgeration/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
EDGERATION_DISPLAY_VERSION := $(EDGERATION_VERSION)
RELEASE_TYPE := $(EDGERATION_BUILD_TYPE)
