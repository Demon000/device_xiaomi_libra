LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera/sensor.cpp camera/SensorManager.cpp
LOCAL_C_INCLUDES := camera
LOCAL_SHARED_LIBRARIES := libgui libutils liblog libbinder libandroid
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := common.cpp
LOCAL_MODULE := libshim_common
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := liblog libbinder libutils
include $(BUILD_SHARED_LIBRARY)
