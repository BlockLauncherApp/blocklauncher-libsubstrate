LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)  
LOCAL_LDLIBS := -llog
LOCAL_MODULE    := mcpelauncher_tinysubstrate
LOCAL_SRC_FILES := Hooker.cpp Debug.cpp PosixMemory.cpp

ifeq ($(TARGET_ARCH_ABI),x86)

LOCAL_SRC_FILES += hde64c/src/hde64.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/hde64c/include/

endif

include $(BUILD_SHARED_LIBRARY)  
