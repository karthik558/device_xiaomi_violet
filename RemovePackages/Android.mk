LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := AmbientSensePrebuilt CarrierSetup Drive FM2 Maps MyVerizonServices OBDM_Permissions OemDmTrigger PrebuiltGmail Showcase SprintDM SprintHM YouTube YouTubeMusicPrebuilt VZWAPNLib VzwOmaTrigger libqcomfm_jni obdm_stub qcom.fmradio Photos Calculator Calender NfcNci TipsPrebuilt GoogleTTS Music MicropaperPrebuilt NgaResources RecorderPrebuilt SafetyHubPrebuilt WallpapersBReel2020 SoundAmplifierPrebuilt AppDirectedSMSService ConnMO DCMO USCCDM arcore talkback DevicePolicyPrebuilt AndroidAutoStubPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
