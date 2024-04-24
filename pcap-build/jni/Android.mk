LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libpcap
# LOCAL_CFLAGS := -D_BSD_SOURCE
LOCAL_CFLAGS := -DHAVE_CONFIG_H
LOCAL_CFLAGS += -Dlint
LOCAL_CFLAGS += -D_U_="__attribute__((__unused__))"
LOCAL_CFLAGS += -Wall
# LOCAL_CFLAGS += -Werror
LOCAL_CFLAGS += -Wno-macro-redefined
LOCAL_CFLAGS += -Wno-pointer-arith
LOCAL_CFLAGS += -Wno-sign-compare
LOCAL_CFLAGS += -Wno-unused-parameter
LOCAL_CFLAGS += -Wno-unused-result
LOCAL_CFLAGS += -Wno-tautological-compare


LOCAL_SRC_FILES := \
    libpcap/bpf_dump.c \
    libpcap/bpf_filter.c \
    libpcap/bpf_image.c \
    libpcap/etherent.c \
    libpcap/fad-gifc.c \
    libpcap/fmtutils.c \
    libpcap/gencode.c \
    libpcap/grammar.c \
    libpcap/nametoaddr.c \
    libpcap/optimize.c \
    libpcap/pcap-common.c \
    libpcap/pcap-linux.c \
    libpcap/pcap-netfilter-linux-android.c \
    libpcap/pcap-usb-linux-common.c \
    libpcap/pcap-usb-linux.c \
    libpcap/pcap-util.c \
    libpcap/pcap.c \
    libpcap/savefile.c \
    libpcap/scanner.c \
    libpcap/sf-pcap.c \
    libpcap/sf-pcapng.c


LOCAL_SRC_FILES_linux += libpcap/missing/strlcpy.c

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)

# build 2
include $(CLEAR_VARS)
LOCAL_MODULE    := interface-list
LOCAL_SRC_FILES := interface-list.c 
LOCAL_STATIC_LIBRARIES := libpcap
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/libpcap
include $(BUILD_EXECUTABLE)