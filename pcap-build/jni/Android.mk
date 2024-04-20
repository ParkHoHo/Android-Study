LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := p

APP_ALLOW_MISSING_DEPS := true

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

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SRC_FILES :=\
	libpcap/pcap-linux.c\
    libpcap/pcap-usb-linux.c\
    libpcap/fad-gifc.c\
    libpcap/pcap.c\
    libpcap/pcap-netfilter-linux-android.c \
	libpcap/bpf_filter.c\
    libpcap/gencode.c\
    libpcap/optimize.c\
    libpcap/nametoaddr.c\
    libpcap/etherent.c\
    libpcap/fmtutils.c\
    libpcap/savefile.c\
    libpcap/sf-pcap.c\
    libpcap/sf-pcapng.c\
    libpcap/pcap-common.c\
    libpcap/bpf_image.c\
    libpcap/bpf_dump.c\
    libpcap/scanner.c\
    libpcap/grammar.c\
	libpcap/missing/strlcpy.c

include $(BUILD_STATIC_LIBRARY)

# # build :: 2
# include $(CLEAR_VARS)
# LOCAL_MODULE    := libpcap
# LOCAL_SRC_FILES := libp.a 
# # LOCAL_STATIC_LIBRARIES := libp
# # LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/libpcap
# include $(BUILD_SHARED_LIBRARY)

# build :: 3
include $(CLEAR_VARS)
LOCAL_MODULE    := interface-list
LOCAL_SRC_FILES := interface-list.c 
LOCAL_STATIC_LIBRARIES := libp
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/libpcap
include $(BUILD_EXECUTABLE)