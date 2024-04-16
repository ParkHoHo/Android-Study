cmake_minimum_required(VERSION 3.29)
project(interface-list LANGUAGES C)


set(LIBPCAP_INCLUDE_DIR "/home/hoho/Hack/Android/Android-Study/pcap/libpcap-1.10.1")
set(LIBPCAP_LIBRARY_DIR "/home/hoho/Hack/Android/Android-Study/pcap/libpcap-1.10.1/build")

add_executable(interface-list interface-list.c)

target_include_directories(interface-list PRIVATE ${LIBPCAP_INCLUDE_DIR})
target_link_libraries(interface-list ${LIBPCAP_LIBRARY_DIR}/libpcap.so)
