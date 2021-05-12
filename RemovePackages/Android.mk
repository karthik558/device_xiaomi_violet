LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := AmbientSensePrebuilt CarrierSetup Drive Maps MyVerizonServices OBDM_Permissions OemDmTrigger PrebuiltGmail Showcase SprintDM SprintHM YouTube YouTubeMusicPrebuilt VZWAPNLib VzwOmaTrigger obdm_stub Photos Calculator Calender NfcNci TipsPrebuilt GoogleTTS Music MicropaperPrebuilt NgaResources RecorderPrebuilt SafetyHubPrebuilt WallpapersBReel2020 SoundAmplifierPrebuilt AppDirectedSMSService ConnMO DCMO USCCDM arcore talkback DevicePolicyPrebuilt AndroidAutoStubPrebuilt Via PlayGames GooglePlayServicesforAR ARCore FilesbyGoogle KeepNotes Keep PixelLiveWallpaper Sounds PixelBuds
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
