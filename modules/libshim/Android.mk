LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := thermal_engine.c
LOCAL_MODULE := libshim_thermalengine
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := 64
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := rild_socket.c
LOCAL_MODULE := rild_socket
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := atomic.cpp
LOCAL_MODULE := libshim_atomic
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := get_process_name.c
LOCAL_MODULE := libshims_get_process_name
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := is_wifi_driver_loaded.cpp
LOCAL_MODULE := libshims_is_wifi_driver_loaded
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libwifi-hal
include $(BUILD_SHARED_LIBRARY)
