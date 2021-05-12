include vendor/edgeration/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/edgeration/config/BoardConfigQcom.mk
endif

include vendor/edgeration/config/BoardConfigSoong.mk
