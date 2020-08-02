LOCAL_PATH := $(call my-dir)
ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)
include $(CLEAR_VARS)
DIR_LIST := $(LOCAL_PATH)
include $(DIR_LIST)/utils/Android.mk
include $(DIR_LIST)/2.0/Android.mk
endif #BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE
