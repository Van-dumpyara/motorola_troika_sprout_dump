#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),troika_sprout)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
