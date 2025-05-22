ifeq ($(MY_LTS_POSTFIX),-lts)
    LOCAL_PATH := $(call my-dir)/../../../prebuilt/android-$(TARGET_ARCH)-lts/ffmpeg/lib
else
    LOCAL_PATH := $(call my-dir)/../../../prebuilt/android-$(TARGET_ARCH)/ffmpeg/lib
endif

MY_ARM_MODE := arm

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libavcodec-fk
LOCAL_SRC_FILES := libavcodec-fk.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libavfilter-fk
LOCAL_SRC_FILES := libavfilter-fk.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libavdevice-fk
LOCAL_SRC_FILES := libavdevice-fk.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libavformat-fk
LOCAL_SRC_FILES := libavformat-fk.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libavutil-fk
LOCAL_SRC_FILES := libavutil-fk.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libswresample-fk
LOCAL_SRC_FILES := libswresample-fk.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := $(MY_ARM_MODE)
LOCAL_MODULE := libswscale-fk
LOCAL_SRC_FILES := libswscale-fk.so
include $(PREBUILT_SHARED_LIBRARY)
