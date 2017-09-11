LOCAL_PATH:= $(call my-dir)
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

include $(CLEAR_VARS)
LOCAL_MODULE:= libavcodec
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libavcodec-57.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavdevice
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libavdevice-57.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavfilter
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libavfilter-6.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavformat
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libavformat-57.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavresample
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libavresample-3.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavutil
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libavutil-55.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libpostproc
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libpostproc-54.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libswresample
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libswresample-2.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libswscale
LOCAL_SRC_FILES:= $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libswscale-4.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := ffmpeg
LOCAL_SRC_FILES := ffmpeg.c ffmpeg_opt.c cmdutils.c ffmpeg_filter.c
LOCAL_LDLIBS := -llog
LOCAL_SHARED_LIBRARIES := libavcodec libavdevice libavfilter libavformat libavresample libavutil libpostproc libswresample libswscale
include $(BUILD_SHARED_LIBRARY)