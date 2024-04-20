LOCAL_PATH := $(call my-dir)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := hello

LOCAL_SRC_FILES := hello.c

include $(BUILD_EXECUTABLE)
