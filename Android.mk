LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := F-Droid
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := F-Droid

fdroid_root  := $(LOCAL_PATH)
fdroid_dir   := F-Droid
fdroid_apk   := build/outputs/apk/F-Droid-release-unsigned.apk

$(fdroid_root)/$(fdroid_dir)/$(fdroid_apk):
	cd $(fdroid_root)/$(fdroid_dir) && gradle assembleRelease

LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := $(fdroid_dir)/$(fdroid_apk)
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

include $(BUILD_PREBUILT)