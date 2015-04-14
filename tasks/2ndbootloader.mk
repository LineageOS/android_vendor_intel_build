# Moorefield is handled by hardware/intel/bootstub/
ifneq ($(TARGET_BOARD_PLATFORM),moorefield)

LOCAL_DTB_PATH := $(LOCAL_KERNEL_PATH)/$(BOARD_DTB_FILE)

$(INSTALLED_2NDBOOTLOADER_TARGET): $(LOCAL_DTB_PATH) | $(ACP)
	$(hide) $(ACP) -fp $(LOCAL_DTB_PATH) $@

endif
