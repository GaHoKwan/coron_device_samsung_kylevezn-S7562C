.class public Lcom/sec/android/app/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;,
        Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final AC_0:I = 0x2

.field public static final AC_MINUS_1_0:I = 0x1

.field public static final AC_MINUS_2_0:I = 0x0

.field public static final AC_PLUS_1_0:I = 0x3

.field public static final AC_PLUS_2_0:I = 0x4

.field public static final AC_STEP:F = 1.0f

.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final AS_0:I = 0x2

.field public static final AS_MINUS_1_0:I = 0x1

.field public static final AS_MINUS_2_0:I = 0x0

.field public static final AS_PLUS_1_0:I = 0x3

.field public static final AS_PLUS_2_0:I = 0x4

.field public static final AS_STEP:F = 1.0f

.field public static final ATTACHMODE_CAMCORDER_EMAIL:I = 0x3

.field public static final ATTACHMODE_CAMCORDER_MMS:I = 0x2

.field public static final ATTACHMODE_NONE:I = 0x0

.field public static final ATTACHMODE_NORMAL:I = 0x1

.field public static final AUDIO_RECORDING_OFF:I = 0x0

.field public static final AUDIO_RECORDING_ON:I = 0x1

.field public static final AUTOCONTRAST_OFF:I = 0x0

.field public static final AUTOCONTRAST_ON:I = 0x1

.field public static final AUTO_SHARESHOT_OFF:I = 0x0

.field public static final AUTO_SHARESHOT_ON:I = 0x1

.field public static final BURST_OFF:I = 0x0

.field public static final BURST_ON:I = 0x1

.field public static final CAMERA_ANTI_BANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final CAMERA_ANTI_BANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final CAMERA_ANTI_BANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final CAMERA_ANTI_BANDING_OFF:Ljava/lang/String; = "off"

.field protected static final CAMERA_SETTINGS_NOTOFICATION:I = 0x0

.field public static final CONTEXTUAL_FILENAME_OFF:I = 0x0

.field public static final CONTEXTUAL_FILENAME_ON:I = 0x1

.field protected static final CSC_KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "csc_pref_camera_videoquality_key"

.field protected static final CSC_KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "csc_pref_camcorder_resolution_key"

.field protected static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field protected static final CSC_KEY_CAMERA_QUALITY:Ljava/lang/String; = "csc_pref_camera_quality_key"

.field protected static final CSC_KEY_FORCED_SHUTTERSOUND:Ljava/lang/String; = "csc_pref_camera_forced_shuttersound_key"

.field protected static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field protected static final DEFAULT_ADJUST_CONTRAST:I = 0x2

.field protected static final DEFAULT_ADJUST_SATURATION:I = 0x2

.field protected static final DEFAULT_BACK_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_BACK_CAMERA_FOCUS:I = 0x1

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:I = 0x1

.field protected static final DEFAULT_CAMCORDER_AUTOCONTRAST:I = 0x0

.field protected static DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMCORDER_EFFECT:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_CAMCORDER_FASTMOTION:I = 0x0

.field protected static final DEFAULT_CAMCORDER_FLASH:I = 0x0

.field protected static final DEFAULT_CAMCORDER_QUALITY:I = 0x0

.field protected static DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_CAMCORDER_SPEED:I = 0x0

.field protected static final DEFAULT_CAMERA_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTO_SHARESHOT:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_CAMERA_BURST_SETTINGS:I = 0x0

.field protected static DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_EFFECT:I = 0x0

.field protected static final DEFAULT_CAMERA_EXPOSUREMETER:I = 0x0

.field protected static final DEFAULT_CAMERA_FLASH:I = 0x0

.field protected static final DEFAULT_CAMERA_HDR_MODE:I = 0x0

.field protected static final DEFAULT_CAMERA_HDR_PICTURE_MODE:I = 0x1

.field protected static final DEFAULT_CAMERA_ID:I = 0x0

.field protected static final DEFAULT_CAMERA_ISO:I = 0x0

.field protected static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_REVIEW:I = 0x0

.field protected static final DEFAULT_CAMERA_SHOOTANDSHARE:I = 0x0

.field protected static final DEFAULT_CAMERA_SHUTTERSOUND:I = 0x1

.field protected static DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_VOICECOMMAND:I = 0x0

.field protected static final DEFAULT_CAMERA_VOLUMEKEY:I = 0x0

.field protected static final DEFAULT_CONTRAST:I = 0x2

.field public static final DEFAULT_CONTRAST_VALUE:I = 0x2

.field protected static final DEFAULT_EDITABLE_SHORTCUT_HELP_TEXT_DIALOG:I = 0x0

.field protected static final DEFAULT_EFFECT:I = 0x0

.field public static final DEFAULT_EFFECT_RECORDER_TYPE:I = 0x0

.field protected static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field public static final DEFAULT_EXPOSURE_VALUE:I = 0x0

.field protected static final DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_FRONT_CAMERA_FOCUS:I = 0x0

.field public static final DEFAULT_MAX_MMS_SIZE:J = 0x49c00L

.field public static final DEFAULT_MMS_VIDEO_DURATION:I = 0xe10

.field protected static final DEFAULT_NETWORK:I = 0x0

.field protected static final DEFAULT_ON_DEVICE_HELP_SCREEN:Z = true

.field protected static final DEFAULT_PREVIEW_FILE_RECEIVED:I = 0x0

.field protected static final DEFAULT_RECORDINGMODE:I = 0x0

.field protected static final DEFAULT_SATURATION:I = 0x2

.field public static final DEFAULT_SATURATION_VALUE:I = 0x2

.field protected static final DEFAULT_SCENEMODE:I = 0x0

.field protected static final DEFAULT_SETUP_CONTEXTUAL_FILENAME:I = 0x0

.field protected static final DEFAULT_SETUP_GPS:I = 0x0

.field protected static final DEFAULT_SETUP_GUIDELINE:I = 0x0

.field protected static final DEFAULT_SETUP_SELF_FLIP:I = 0x0

.field protected static final DEFAULT_SETUP_STORAGE:I = 0x0

.field protected static final DEFAULT_SHARPNESS:I = 0x2

.field public static final DEFAULT_SHARPNESS_VALUE:I = 0x2

.field protected static final DEFAULT_SHOOTINGMODE:I = 0x0

.field protected static final DEFAULT_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x3c

.field protected static final DEFAULT_WHITEBALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field protected static final DIALOG_DISABLE_OFF:I = 0x0

.field protected static final DIALOG_DISABLE_ON:I = 0x1

.field public static final EFFECT_ANTIQUE:I = 0x5

.field public static final EFFECT_AQUA:I = 0x4

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_CARTOONIZE:I = 0x13

.field public static final EFFECT_EMBOSS:I = 0x7

.field public static final EFFECT_MONOCHROME:I = 0x9

.field public static final EFFECT_NEGATIVE:I = 0x1

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_OUTLINE:I = 0x8

.field public static final EFFECT_POINT_BLUE:I = 0x10

.field public static final EFFECT_POINT_GREEN:I = 0x12

.field public static final EFFECT_POINT_RED_YELLOW:I = 0x11

.field public static final EFFECT_POSTERIZE:I = 0xf

.field public static final EFFECT_RECORDER_BIG_EYES:I = 0x2

.field public static final EFFECT_RECORDER_BIG_MOUTH:I = 0x4

.field public static final EFFECT_RECORDER_BIG_NOSE:I = 0x3

.field public static final EFFECT_RECORDER_NONE:I = 0x0

.field public static final EFFECT_RECORDER_SMALL_EYES:I = 0x5

.field public static final EFFECT_RECORDER_SMALL_MOUTH:I = 0x6

.field public static final EFFECT_RECORDER_SQUEEZE:I = 0x1

.field public static final EFFECT_SEPIA:I = 0x3

.field public static final EFFECT_SHARPEN:I = 0x6

.field public static final EFFECT_SKETCH:I = 0xa

.field public static final EFFECT_SOLARIZE:I = 0xe

.field public static final EFFECT_VINTAGE_COLD:I = 0xd

.field public static final EFFECT_VINTAGE_WARM:I = 0xc

.field public static final EFFECT_WASHED:I = 0xb

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_5:I = -0x1

.field public static final EV_MINUS_1_0:I = -0x2

.field public static final EV_MINUS_1_5:I = -0x3

.field public static final EV_MINUS_2_0:I = -0x4

.field public static final EV_PLUS_0_5:I = 0x1

.field public static final EV_PLUS_1_0:I = 0x2

.field public static final EV_PLUS_1_5:I = 0x3

.field public static final EV_PLUS_2_0:I = 0x4

.field public static final EV_STEP:F = 0.5f

.field public static final EXPOSUREMETER_CENTER:I = 0x0

.field public static final EXPOSUREMETER_MATRIX:I = 0x2

.field public static final EXPOSUREMETER_SPOT:I = 0x1

.field public static final FLASHMODE_AUTO:I = 0x2

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x1

.field public static final FLASHMODE_REDEYE:I = 0x3

.field public static final FLASHMODE_TORCH:I = 0x4

.field public static final FLIP_OFF:I = 0x0

.field public static final FLIP_ON:I = 0x1

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_CONTINUOUS_PICTURE:I = 0x5

.field public static final FOCUSMODE_CONTINUOUS_PICTURE_MACRO:I = 0x6

.field public static final FOCUSMODE_CONTINUOUS_VIDEO:I = 0x4

.field public static final FOCUSMODE_FACEDETECTION:I = 0x3

.field public static final FOCUSMODE_MACRO:I = 0x2

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_ON:I = 0x1

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_ON:I = 0x1

.field public static final HDR_LEVEL_NORMAL:I = 0x0

.field public static final HDR_LEVEL_STRONG:I = 0x1

.field public static final HDR_PICTURE_AND:I = 0x1

.field public static final HDR_PICTURE_ONLY:I = 0x0

.field public static final ISO_100:I = 0x2

.field public static final ISO_1200:I = 0x6

.field public static final ISO_1600:I = 0x7

.field public static final ISO_200:I = 0x3

.field public static final ISO_2400:I = 0x8

.field public static final ISO_3200:I = 0x9

.field public static final ISO_400:I = 0x4

.field public static final ISO_50:I = 0x1

.field public static final ISO_800:I = 0x5

.field public static final ISO_AUTO:I = 0x0

.field public static final ISO_MOVIE:I = 0xc

.field public static final ISO_NIGHT:I = 0xb

.field public static final ISO_SPORTS:I = 0xa

.field protected static final KEY_BURST_SHOT_GUIDE_TEXT_DIALOG:Ljava/lang/String; = "pref_burst_shot_guide_text_dialog"

.field protected static final KEY_CAMCORDER_ANTISHAKE:Ljava/lang/String; = "pref_camcorder_antishake_key"

.field protected static final KEY_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_new_camcorder_editable_shortcut_order"

.field protected static final KEY_CAMCORDER_FLASH:Ljava/lang/String; = "pref_camcorder_flash_key"

.field protected static final KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field protected static final KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_camcorder_resolution_key"

.field protected static final KEY_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String; = "pref_new_camcorder_sidemenu_order"

.field protected static final KEY_CAMCORDER_SPEED:Ljava/lang/String; = "pref_camera_videospeed_key"

.field protected static final KEY_CAMCORDER_TIMELAPSE:Ljava/lang/String; = "pref_camera_videotimelapse_key"

.field protected static final KEY_CAMERA_ANTISHAKE:Ljava/lang/String; = "pref_camera_antishake_key"

.field protected static final KEY_CAMERA_AUTO_SHARESHOT:Ljava/lang/String; = "pref_camera_auto_shareshot_key"

.field protected static final KEY_CAMERA_BURST_SETTINGS:Ljava/lang/String; = "pref_camera_burst_settings_key"

.field protected static final KEY_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_new_camera_editable_shortcut_order"

.field protected static final KEY_CAMERA_EXPOSUREMETER:Ljava/lang/String; = "pref_camera_exposuremeter_key"

.field protected static final KEY_CAMERA_FLASH:Ljava/lang/String; = "pref_camera_flash_key"

.field protected static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field protected static final KEY_CAMERA_HDR_INTENSITY_MODE:Ljava/lang/String; = "pref_camera_hdr_intensity_mode_key"

.field protected static final KEY_CAMERA_HDR_MODE:Ljava/lang/String; = "pref_camera_hdr_mode_key"

.field protected static final KEY_CAMERA_HDR_PICTURE_MODE:Ljava/lang/String; = "pref_camera_hdr_picture_mode_key"

.field protected static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field protected static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field protected static final KEY_CAMERA_NETWORK:Ljava/lang/String; = "pref_camera_network_key"

.field protected static final KEY_CAMERA_PREVIEW_FILE_RECEIVED:Ljava/lang/String; = "pref_camera_preview_file_received_key"

.field protected static final KEY_CAMERA_QUALITY:Ljava/lang/String; = "pref_camera_quality_key"

.field protected static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field protected static final KEY_CAMERA_REVIEW:Ljava/lang/String; = "pref_camera_review_key"

.field protected static final KEY_CAMERA_SHOOTANDSHARE:Ljava/lang/String; = "pref_camera_shootandshare_key"

.field protected static final KEY_CAMERA_SHUTTERSOUND:Ljava/lang/String; = "pref_camera_shuttersound_key"

.field protected static final KEY_CAMERA_SIDEMENU_ORDER:Ljava/lang/String; = "pref_new_camera_sidemenu_order"

.field protected static final KEY_CAMERA_USER_PROFILE:Ljava/lang/String; = "pref_camera_user_profile_key"

.field protected static final KEY_CAMERA_VOLUMEKEY:Ljava/lang/String; = "pref_camera_volumekey_key"

.field protected static final KEY_CHANGE_STORAGE_SETTING_DIALOG:Ljava/lang/String; = "pref_change_storage_setting_dialog"

.field protected static final KEY_EDITABLE_SHORTCUT_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_editable_shortcut_help_text_dialog"

.field protected static final KEY_FACE_ZOOM_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_face_zoom_help_text_dialog"

.field protected static final KEY_HDR_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_hdr_help_text_dialog"

.field protected static final KEY_PROFILR_NAME:Ljava/lang/String; = "pref_user_name"

.field protected static final KEY_SBEAM_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_sbeam_help_text_dialog"

.field protected static final KEY_SELECTED_MODE:Ljava/lang/String; = "pref_selected_mode_key"

.field protected static final KEY_SETUP_CONTEXTUAL_FILENAME:Ljava/lang/String; = "pref_setup_contextual_filename_key"

.field protected static final KEY_SETUP_GPS:Ljava/lang/String; = "pref_setup_gps_key"

.field protected static final KEY_SETUP_GUIDELINE:Ljava/lang/String; = "pref_setup_guideline_key"

.field protected static final KEY_SETUP_SELF_FLIP:Ljava/lang/String; = "pref_setup_self_flip_key"

.field protected static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_setup_storage_key"

.field protected static final KEY_SINGLE_SHOT_BURST_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_single_shot_burst_help_text_dialog"

.field protected static final KEY_SNAPSHOT_LIMITATION_DIALOG:Ljava/lang/String; = "pref_snap_shot_limitation_dialog"

.field protected static final KEY_STORAGE_FOR_BURST_DIALOG:Ljava/lang/String; = "pref_storage_burst_dialog"

.field protected static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field protected static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field protected static final KEY_VOICE_INPUT_CONTROL_CAMERA:Ljava/lang/String; = "voice_input_control_camera"

.field public static final MENUID_ADJUST:I = 0x17

.field public static final MENUID_ADJUST_CONTRAST:I = 0x38

.field public static final MENUID_ADJUST_SATURATION:I = 0x39

.field public static final MENUID_ANTISHAKE:I = 0xd

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTOCONTRAST:I = 0xe

.field public static final MENUID_AUTO_SHARESHOT:I = 0x31

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BURST_SETTINGS:I = 0x2f

.field public static final MENUID_CAMCORDER_ADJUST:I = 0x71

.field public static final MENUID_CAMCORDER_ADJUST_CONTRAST:I = 0x86

.field public static final MENUID_CAMCORDER_ADJUST_SATURATION:I = 0x87

.field public static final MENUID_CAMCORDER_ANTISHAKE:I = 0x7d

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0x77

.field public static final MENUID_CAMCORDER_AUTOCONTRAST:I = 0x6e

.field public static final MENUID_CAMCORDER_CONTEXTUAL_FILENAME:I = 0x81

.field public static final MENUID_CAMCORDER_CONTRAST:I = 0x72

.field public static final MENUID_CAMCORDER_DEFAULT_LAYOUT:I = 0x80

.field public static final MENUID_CAMCORDER_EFFECT:I = 0x6c

.field public static final MENUID_CAMCORDER_EFFECT_RECORDER:I = 0x7f

.field public static final MENUID_CAMCORDER_EXPOSUREVALUE:I = 0x6d

.field public static final MENUID_CAMCORDER_FLASHMODE:I = 0x67

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0x69

.field public static final MENUID_CAMCORDER_GPS:I = 0x82

.field public static final MENUID_CAMCORDER_GUIDELINE:I = 0x7b

.field public static final MENUID_CAMCORDER_OUTDOOR_VISIBILITY:I = 0x7a

.field public static final MENUID_CAMCORDER_QUALITY:I = 0x6f

.field public static final MENUID_CAMCORDER_RECORDINGMODE:I = 0x65

.field public static final MENUID_CAMCORDER_RESET:I = 0x76

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0x68

.field public static final MENUID_CAMCORDER_REVIEW:I = 0x78

.field public static final MENUID_CAMCORDER_SATURATION:I = 0x73

.field public static final MENUID_CAMCORDER_SELF:I = 0x79

.field public static final MENUID_CAMCORDER_SETTINGS:I = 0x7c

.field public static final MENUID_CAMCORDER_SHARPNESS:I = 0x74

.field public static final MENUID_CAMCORDER_SPEED:I = 0x7e

.field public static final MENUID_CAMCORDER_STORAGE:I = 0x75

.field public static final MENUID_CAMCORDER_TIMELAPSE:I = 0x83

.field public static final MENUID_CAMCORDER_TIMER:I = 0x6a

.field public static final MENUID_CAMCORDER_VOICECOMMAND:I = 0x84

.field public static final MENUID_CAMCORDER_VOLUMEKEY:I = 0x85

.field public static final MENUID_CAMCORDER_WB:I = 0x6b

.field public static final MENUID_CAMCORDER_ZOOM:I = 0x70

.field public static final MENUID_CAM_SENSORMODE:I = 0x25

.field public static final MENUID_CONTEXTUAL_FILENAME:I = 0x30

.field public static final MENUID_CONTRAST:I = 0x18

.field public static final MENUID_DEFAULT_LAYOUT:I = 0x2e

.field public static final MENUID_DEVICELIST:I = 0x28

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_HDR_INTENSITY:I = 0x36

.field public static final MENUID_HDR_MODE:I = 0x33

.field public static final MENUID_HDR_OPTION_MENU:I = 0x35

.field public static final MENUID_HDR_PICTURE:I = 0x37

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_LOCK:I = 0x22

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_NETWORK:I = 0x2b

.field public static final MENUID_OUTDOOR_VISIBILITY:I = 0x23

.field public static final MENUID_PREVIEWFILERECEIVED:I = 0x2a

.field public static final MENUID_QUALITY:I = 0x10

.field public static final MENUID_RESET:I = 0x1e

.field public static final MENUID_RESOLUTION:I = 0x4

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_SATURATION:I = 0x19

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SELECTPICTURE:I = 0x2c

.field public static final MENUID_SELF:I = 0x24

.field public static final MENUID_SELF_FLIP:I = 0x26

.field public static final MENUID_SETTINGS:I = 0x1b

.field public static final MENUID_SHARPNESS:I = 0x1a

.field public static final MENUID_SHOOTANDSHARE:I = 0x27

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_USERPROFILE:I = 0x29

.field public static final MENUID_VINTAGE:I = 0x1f

.field public static final MENUID_VOICECOMMAND:I = 0x32

.field public static final MENUID_VOLUMEKEY:I = 0x34

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

.field public static final MODE_CAMCORDER:I = 0x1

.field public static final MODE_CAMERA:I = 0x0

.field public static final NETWORK:I = 0x4

.field public static final NETWORK_ID:I = 0x3ea

.field public static final NO_VALUE:I = -0xffff

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_OFF:Z = false

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_ON:Z = true

.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1

.field public static final PREVIEW_FILE_RECEIVED:I = 0x3

.field public static final PREVIEW_FILE_RECEIVED_OFF:I = 0x0

.field public static final PREVIEW_FILE_RECEIVED_ON:I = 0x1

.field public static final QUALITY_FINE:I = 0x1

.field public static final QUALITY_FOR_NZSL_BURST:I = 0x3

.field public static final QUALITY_NORMAL:I = 0x2

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final RECORDINGMODE_EMAIL:I = 0x4

.field public static final RECORDINGMODE_FASTMOTION:I = 0x3

.field public static final RECORDINGMODE_MMS:I = 0x1

.field public static final RECORDINGMODE_NORMAL:I = 0x0

.field public static final RECORDINGMODE_SLOWMOTION:I = 0x2

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x1

.field public static final SCENEMODE_AQUA:I = 0xe

.field public static final SCENEMODE_BACKLIGHT:I = 0xd

.field public static final SCENEMODE_BEACHSNOW:I = 0x6

.field public static final SCENEMODE_CANDLELIGHT:I = 0xc

.field public static final SCENEMODE_DAWNDUSK:I = 0x8

.field public static final SCENEMODE_FALLCOLOR:I = 0x9

.field public static final SCENEMODE_FIREWORK:I = 0xa

.field public static final SCENEMODE_INDOOR:I = 0x5

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_NIGHT:I = 0x3

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SPORTS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x7

.field public static final SCENEMODE_TEXT:I = 0xb

.field public static final SELF_OFF:I = 0x0

.field public static final SELF_ON:I = 0x1

.field public static final SHOOTANDSHARE_OFF:I = 0x0

.field public static final SHOOTANDSHARE_ON:I = 0x1

.field public static final SHOOTINGMODE_ACTION_SHOT:I = 0xa

.field public static final SHOOTINGMODE_ADD_ME:I = 0x9

.field public static final SHOOTINGMODE_AQUA:I = 0x1b

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_BEST:I = 0x18

.field public static final SHOOTINGMODE_BESTGROUP:I = 0x19

.field public static final SHOOTINGMODE_BUDDY_PHOTOSHARING:I = 0x12

.field public static final SHOOTINGMODE_BURST:I = 0x11

.field public static final SHOOTINGMODE_CARTOON:I = 0xd

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x1

.field public static final SHOOTINGMODE_FACE_SHOT:I = 0x10

.field public static final SHOOTINGMODE_FRAME:I = 0x5

.field public static final SHOOTINGMODE_HDR:I = 0xe

.field public static final SHOOTINGMODE_MOSAIC:I = 0x4

.field public static final SHOOTINGMODE_MULTI_FRAME:I = 0x17

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_SHOOTANDSHARE:I = 0xf

.field public static final SHOOTINGMODE_SINGLE:I = 0x0

.field public static final SHOOTINGMODE_SLOWMOTION:I = 0x1a

.field public static final SHOOTINGMODE_SMILE:I = 0x3

.field public static final SHOOTINGMODE_STOP_MOTION:I = 0xb

.field public static final SHOOTINGMODE_VINTAGE:I = 0x8

.field public static final SHUTTER_CAMCORDER:I = 0x1

.field public static final SHUTTER_CAMERA:I = 0x0

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final SHUTTER_SOUND_ON:I = 0x1

.field public static final SPEED_2X_FASTER:I = 0x6

.field public static final SPEED_2X_SLOWER:I = 0x1

.field public static final SPEED_4X_FASTER:I = 0x7

.field public static final SPEED_4X_SLOWER:I = 0x2

.field public static final SPEED_8X_FASTER:I = 0x8

.field public static final SPEED_8X_SLOWER:I = 0x3

.field public static final SPEED_OFF:I = 0x0

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final TIMELAPSE_10_SEC:I = 0x11

.field public static final TIMELAPSE_1_5_SEC:I = 0xc

.field public static final TIMELAPSE_1_SEC:I = 0xb

.field public static final TIMELAPSE_2_5_SEC:I = 0xe

.field public static final TIMELAPSE_2_SEC:I = 0xd

.field public static final TIMELAPSE_3_SEC:I = 0xf

.field public static final TIMELAPSE_5_SEC:I = 0x10

.field public static final TIMELAPSE_NONE:I = 0xa

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final USER_PROFILE:I = 0x2

.field public static final USER_PROFILE_ID:I = 0x3e9

.field public static final VOICECOMMAND_OFF:I = 0x0

.field public static final VOICECOMMAND_ON:I = 0x1

.field public static final VOLUMEKEY_SHUTTER:I = 0x1

.field public static final VOLUMEKEY_ZOOM:I = 0x0

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x2

.field public static final WB_DAYLIGHT:I = 0x1

.field public static final WB_FLUORESCENT:I = 0x4

.field public static final WB_HORIZON:I = 0x6

.field public static final WB_INCANDESCENT:I = 0x3

.field public static final WB_SHADE:I = 0x5

.field private static mCamcorderResolution:I

.field public static final mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEFAULT_OUTDOOR_VISIBILITY:I

.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAdjustContrast:I

.field private mAdjustSaturation:I

.field private mAntiShake:I

.field private mAttachEmailMode:Z

.field private mAttachMMSMode:Z

.field private mAttachMode:Z

.field private mAutoContrast:I

.field private mAutoShareShot:I

.field private mBackRecordingMode:I

.field public mBackShootingMode:I

.field private mBurstmode:I

.field private mCamcorderAdjustContrast:I

.field private mCamcorderAdjustSaturation:I

.field private mCamcorderAntiShake:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderAutoContrast:I

.field private mCamcorderContrast:I

.field private mCamcorderEditableShortcutOrder:Ljava/lang/String;

.field private mCamcorderEffect:I

.field private mCamcorderExposureValue:I

.field private mCamcorderFlashMode:I

.field private mCamcorderFrontEffect:I

.field private mCamcorderOutdoorVisibility:I

.field private mCamcorderQuality:I

.field private mCamcorderResolutionChanged:Z

.field private mCamcorderSaturation:I

.field private mCamcorderSharpness:I

.field private mCamcorderSidemenuOrder:Ljava/lang/String;

.field private mCamcorderTimer:I

.field private mCamcorderZoomValue:I

.field private mCameraEditableShortcutOrder:Ljava/lang/String;

.field private mCameraId:I

.field private mCameraResolutionChanged:Z

.field private mCameraSidemenuOrder:Ljava/lang/String;

.field private mContextualFilename:I

.field private mContrast:I

.field private mDeviceName:Ljava/lang/String;

.field private mEffect:I

.field private mEffectRecorderType:I

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFocusMode:I

.field private mFrontEffect:I

.field private mFrontRecordingMode:I

.field public mFrontShootingMode:I

.field private mGPS:I

.field private mGuideLine:I

.field private mHDRmodeLevel:I

.field private mHDRmodePicture:I

.field private mISO:I

.field private mMaxMmsSize:J

.field private mMode:I

.field private mNetwork:I

.field protected mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

.field private mNumberOfCsShotCaptured:I

.field private mNumberOfCsShotSaved:I

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOutdoorVisibility:I

.field protected mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

.field private mPrevSceneMode:I

.field private mPreviewFileReceived:I

.field public mPreviousShootingMode:I

.field protected mProp:Ljava/util/Properties;

.field private mQuality:I

.field private mRecordingMode:I

.field private mRecordingSpeed:I

.field private mRequestedRecordingSize:J

.field private mResolution:I

.field private mReview:I

.field private mSaturation:I

.field private mSceneMode:I

.field private mSelectedMode:I

.field private mSelfMode:I

.field private mSelfToggle:Z

.field private mSharpness:I

.field private mShootAndShare:I

.field public mShootingMode:I

.field private mShutterSound:I

.field private mStorage:I

.field private mTimeLapse:I

.field private mTimer:I

.field private mUserName:Ljava/lang/String;

.field private mVideoDuration:I

.field private mVideocallPresetSelected:Z

.field private mVoiceCommand:I

.field private mVolumeKey:I

.field private mWB:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_BURST_SETTINGS:I

    .line 650
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderSpeed()I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SPEED:I

    .line 651
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderFastMotion()I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_FASTMOTION:I

    .line 697
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 698
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 699
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 700
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 750
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraSettings$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    .line 815
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraSettings$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 5
    .parameter "activityContext"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    .line 180
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 191
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    .line 196
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 226
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 227
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    .line 228
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    .line 229
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousShootingMode:I

    .line 247
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 248
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPrevSceneMode:I

    .line 269
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 289
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 299
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 322
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 323
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontEffect:I

    .line 339
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 356
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    .line 451
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 452
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 453
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 455
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 463
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 464
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackRecordingMode:I

    .line 465
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontRecordingMode:I

    .line 474
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    .line 527
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectRecorderType:I

    .line 536
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustContrast:I

    .line 544
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustSaturation:I

    .line 547
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 548
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 550
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 551
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 552
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFrontEffect:I

    .line 554
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 555
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 556
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 557
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 558
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 560
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 561
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 563
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 564
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 565
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 567
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 568
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 569
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    .line 571
    iput-wide v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 572
    iput-wide v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 574
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 576
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 577
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 701
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 702
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 703
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 704
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 745
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    .line 746
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    .line 748
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfToggle:Z

    .line 878
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    .line 881
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 882
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3571
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getDefaultBurstMode()I
    .locals 1

    .prologue
    .line 3424
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultCamcorderFastMotion()I
    .locals 1

    .prologue
    .line 3188
    const/16 v0, 0xa

    return v0
.end method

.method public static getDefaultCamcorderSpeed()I
    .locals 1

    .prologue
    .line 3184
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 5217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5218
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5221
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3655
    packed-switch p0, :pswitch_data_0

    .line 3687
    :pswitch_0
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 3657
    :pswitch_1
    const-string v0, "none"

    goto :goto_0

    .line 3659
    :pswitch_2
    const-string v0, "negative"

    goto :goto_0

    .line 3661
    :pswitch_3
    const-string v0, "mono"

    goto :goto_0

    .line 3663
    :pswitch_4
    const-string v0, "sepia"

    goto :goto_0

    .line 3665
    :pswitch_5
    const-string v0, "monochrome"

    goto :goto_0

    .line 3667
    :pswitch_6
    const-string v0, "sketch"

    goto :goto_0

    .line 3669
    :pswitch_7
    const-string v0, "washed"

    goto :goto_0

    .line 3671
    :pswitch_8
    const-string v0, "posterize"

    goto :goto_0

    .line 3673
    :pswitch_9
    const-string v0, "solarize"

    goto :goto_0

    .line 3675
    :pswitch_a
    const-string v0, "vintage-cold"

    goto :goto_0

    .line 3677
    :pswitch_b
    const-string v0, "vintage-warm"

    goto :goto_0

    .line 3679
    :pswitch_c
    const-string v0, "point-blue"

    goto :goto_0

    .line 3681
    :pswitch_d
    const-string v0, "point-red-yellow"

    goto :goto_0

    .line 3683
    :pswitch_e
    const-string v0, "point-green"

    goto :goto_0

    .line 3685
    :pswitch_f
    const-string v0, "cartoonize"

    goto :goto_0

    .line 3655
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3738
    packed-switch p0, :pswitch_data_0

    .line 3746
    const-string v0, "center"

    :goto_0
    return-object v0

    .line 3740
    :pswitch_0
    const-string v0, "center"

    goto :goto_0

    .line 3742
    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    .line 3744
    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    .line 3738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3616
    packed-switch p0, :pswitch_data_0

    .line 3626
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3618
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 3620
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 3622
    :pswitch_3
    const-string v0, "off"

    goto :goto_0

    .line 3624
    :pswitch_4
    const-string v0, "torch"

    goto :goto_0

    .line 3616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3631
    packed-switch p0, :pswitch_data_0

    .line 3650
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3634
    :pswitch_0
    const-string v0, "infinity"

    goto :goto_0

    .line 3638
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 3640
    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    .line 3642
    :pswitch_3
    const-string v0, "face-priority"

    goto :goto_0

    .line 3644
    :pswitch_4
    const-string v0, "continuous-video"

    goto :goto_0

    .line 3646
    :pswitch_5
    const-string v0, "continuous-picture"

    goto :goto_0

    .line 3648
    :pswitch_6
    const-string v0, "continuous-picture-macro"

    goto :goto_0

    .line 3631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1803
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1805
    .end local p2
    :goto_0
    return p2

    .line 1804
    .restart local p2
    :catch_0
    move-exception v0

    .line 1805
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3709
    packed-switch p0, :pswitch_data_0

    .line 3733
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3711
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 3713
    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    .line 3715
    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    .line 3717
    :pswitch_4
    const-string v0, "200"

    goto :goto_0

    .line 3719
    :pswitch_5
    const-string v0, "400"

    goto :goto_0

    .line 3721
    :pswitch_6
    const-string v0, "800"

    goto :goto_0

    .line 3723
    :pswitch_7
    const-string v0, "1600"

    goto :goto_0

    .line 3725
    :pswitch_8
    const-string v0, "3200"

    goto :goto_0

    .line 3727
    :pswitch_9
    const-string v0, "sports"

    goto :goto_0

    .line 3729
    :pswitch_a
    const-string v0, "night"

    goto :goto_0

    .line 3731
    :pswitch_b
    const-string v0, "movie"

    goto :goto_0

    .line 3709
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 3482
    sparse-switch p0, :sswitch_data_0

    .line 3566
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 3484
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 3486
    :sswitch_1
    const-string v0, "flash-mode"

    goto :goto_0

    .line 3488
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 3491
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 3493
    :sswitch_4
    const-string v0, "exposure-compensation"

    goto :goto_0

    .line 3495
    :sswitch_5
    const-string v0, "effect"

    goto :goto_0

    .line 3497
    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    .line 3499
    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    .line 3501
    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 3503
    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    .line 3505
    :sswitch_a
    const-string v0, "metering"

    goto :goto_0

    .line 3507
    :sswitch_b
    const-string v0, "anti-shake"

    goto :goto_0

    .line 3509
    :sswitch_c
    const-string v0, "wdr"

    goto :goto_0

    .line 3512
    :sswitch_d
    const-string v0, "contrast"

    goto :goto_0

    .line 3515
    :sswitch_e
    const-string v0, "saturation"

    goto :goto_0

    .line 3517
    :sswitch_f
    const-string v0, "sharpness"

    goto :goto_0

    .line 3519
    :sswitch_10
    const-string v0, "flash-mode"

    goto :goto_0

    .line 3521
    :sswitch_11
    const-string v0, "video-size"

    goto :goto_0

    .line 3523
    :sswitch_12
    const-string v0, "exposure-compensation"

    goto :goto_0

    .line 3525
    :sswitch_13
    const-string v0, "effect"

    goto :goto_0

    .line 3527
    :sswitch_14
    const-string v0, "whitebalance"

    goto :goto_0

    .line 3529
    :sswitch_15
    const-string v0, "wdr"

    goto :goto_0

    .line 3531
    :sswitch_16
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 3533
    :sswitch_17
    const-string v0, "zoom"

    goto :goto_0

    .line 3535
    :sswitch_18
    const-string v0, "video-stabilization"

    goto :goto_0

    .line 3538
    :sswitch_19
    const-string v0, "contrast"

    goto :goto_0

    .line 3541
    :sswitch_1a
    const-string v0, "saturation"

    goto :goto_0

    .line 3543
    :sswitch_1b
    const-string v0, "sharpness"

    goto :goto_0

    .line 3545
    :sswitch_1c
    const-string v0, "cam_mode"

    goto :goto_0

    .line 3547
    :sswitch_1d
    const-string v0, "effect_recorder"

    goto :goto_0

    .line 3549
    :sswitch_1e
    const-string v0, "fast-fps-mode"

    goto :goto_0

    .line 3482
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0x10 -> :sswitch_8
        0x12 -> :sswitch_9
        0x18 -> :sswitch_d
        0x19 -> :sswitch_e
        0x1a -> :sswitch_f
        0x25 -> :sswitch_1c
        0x38 -> :sswitch_d
        0x39 -> :sswitch_e
        0x67 -> :sswitch_10
        0x68 -> :sswitch_11
        0x69 -> :sswitch_3
        0x6b -> :sswitch_14
        0x6c -> :sswitch_13
        0x6d -> :sswitch_12
        0x6e -> :sswitch_15
        0x6f -> :sswitch_16
        0x70 -> :sswitch_17
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1a
        0x74 -> :sswitch_1b
        0x7d -> :sswitch_18
        0x7e -> :sswitch_1e
        0x7f -> :sswitch_1d
        0x86 -> :sswitch_19
        0x87 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getQualityValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x64

    .line 3751
    packed-switch p0, :pswitch_data_0

    .line 3761
    :goto_0
    :pswitch_0
    return v0

    .line 3755
    :pswitch_1
    const/16 v0, 0x46

    goto :goto_0

    .line 3757
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 3759
    :pswitch_3
    const/16 v0, 0x62

    goto :goto_0

    .line 3751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingFastFPSMode(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 4006
    const/4 v0, 0x0

    return v0
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3579
    packed-switch p0, :pswitch_data_0

    .line 3611
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3581
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 3583
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 3585
    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    .line 3587
    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    .line 3589
    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    .line 3591
    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    .line 3593
    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    .line 3595
    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    .line 3597
    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    .line 3599
    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    .line 3601
    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    .line 3603
    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    .line 3605
    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    .line 3607
    :pswitch_d
    const-string v0, "back-light"

    goto :goto_0

    .line 3609
    :pswitch_e
    const-string v0, "aqua_scn"

    goto :goto_0

    .line 3579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 5225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5227
    .local v0, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5228
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5230
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5231
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5233
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5234
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5237
    :cond_2
    return-object v0
.end method

.method public static getVideoSize()I
    .locals 1

    .prologue
    .line 2989
    sget v0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    return v0
.end method

.method public static getVintageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3575
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3692
    packed-switch p0, :pswitch_data_0

    .line 3704
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3694
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 3696
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 3698
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 3700
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 3702
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 3692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeBackCamcorder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_sidemenu_order"

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 1490
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_editable_shortcut_order"

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1491
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 1493
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1494
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1495
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1496
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    sget v2, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1499
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 1500
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1501
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1502
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1503
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1504
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1505
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1506
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1507
    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1508
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1509
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1510
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 1511
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 1512
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1513
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectRecorderType:I

    .line 1515
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1518
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 1519
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onEffectMenuSelect(I)V

    .line 1529
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1531
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1532
    return-void
.end method

.method private initializeBackCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_sidemenu_order"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_editable_shortcut_order"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 901
    :cond_1
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 902
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 903
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 904
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 917
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 918
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 919
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 920
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 926
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 927
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 931
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 933
    return-void
.end method

.method private initializeFrontCamcorder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_sidemenu_order"

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 1538
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_editable_shortcut_order"

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1539
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 1541
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1542
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    sget v2, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1547
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 1548
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1549
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1550
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1551
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1552
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1553
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1554
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1555
    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1556
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1557
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1558
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 1559
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 1560
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1561
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectRecorderType:I

    .line 1563
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1566
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onEffectMenuSelect(I)V

    .line 1577
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1579
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1580
    return-void
.end method

.method private initializeFrontCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_sidemenu_order"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_editable_shortcut_order"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 944
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 947
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x5

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->loadFromPreferences([I)V

    .line 950
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 951
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 954
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 960
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 961
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 965
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 967
    return-void
.end method

.method public static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 4399
    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_guideline_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_gps_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_storage_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_self_flip_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_quality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_videoquality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_review_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_shuttersound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_selected_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_editable_shortcut_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_sbeam_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_single_shot_burst_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_hdr_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_change_storage_setting_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_face_zoom_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_burst_shot_guide_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_storage_burst_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camera_sidemenu_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camcorder_sidemenu_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camera_editable_shortcut_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camcorder_editable_shortcut_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_snap_shot_limitation_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_contextual_filename_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_burst_settings_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_auto_shareshot_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_intensity_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_picture_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_volumekey_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCamcorderGlobalSettings()V
    .locals 2

    .prologue
    .line 4546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 4547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 4548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    .line 4551
    :cond_0
    return-void
.end method

.method private resetCamcorderLocalSettings(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4555
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4558
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 4571
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4572
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 4575
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4576
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 4577
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 4578
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 4579
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 4580
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 4581
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 4582
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 4583
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    .line 4588
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 4589
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 4590
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 4591
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 4592
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 4593
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 4594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 4597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 4598
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSideMenuOrder(Ljava/lang/String;)V

    .line 4599
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 4600
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEditableShortcutOrder(Ljava/lang/String;)V

    .line 4603
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 4605
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setEULAenable(Z)V

    .line 4607
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4608
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    .line 4612
    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackRecordingMode:I

    .line 4613
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontRecordingMode:I

    .line 4614
    return-void

    .line 4559
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4560
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 4610
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setEditableShortcutHelpTextDialog(I)V

    goto :goto_1
.end method

.method private resetCameraGlobalSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4444
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 4445
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 4446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 4447
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 4449
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoShareShotMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setAutoShareShotMode(I)V

    .line 4451
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 4453
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4454
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setShutterSoundToDefault()V

    .line 4456
    :cond_0
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 4460
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4462
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 4463
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 4464
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 4465
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 4466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 4467
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 4468
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 4469
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 4470
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 4471
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 4472
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 4473
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 4474
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    .line 4479
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 4480
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 4481
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 4482
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 4484
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 4489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 4490
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSideMenuOrder(Ljava/lang/String;)V

    .line 4491
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 4492
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEditableShortcutOrder(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 4496
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    .line 4510
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 4512
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setEULAenable(Z)V

    .line 4514
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    .line 4524
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstShotsGuideTextDialog(I)V

    .line 4525
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorageForBurstDialog(I)V

    .line 4526
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    .line 4527
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    .line 4533
    return-void

    .line 4520
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setEditableShortcutHelpTextDialog(I)V

    goto :goto_0
.end method

.method private resetCommonGlobalSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4432
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 4433
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4434
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 4437
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 4438
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 4439
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 4440
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    .line 4441
    return-void
.end method

.method private setSelfMode(I)V
    .locals 3
    .parameter "selfMode"

    .prologue
    .line 1885
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    if-eq v0, p1, :cond_0

    .line 1886
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSelfMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 1888
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_1

    .line 1889
    const/16 v0, 0x24

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1891
    :cond_1
    const/16 v0, 0x79

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method


# virtual methods
.method public androidBeamController(ZI)V
    .locals 7
    .parameter "mode"
    .parameter "mNfcState"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 5423
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5425
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    .line 5427
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 5428
    .local v1, nState:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAndoridBeamEnabled nState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNfcState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    if-eqz p1, :cond_3

    .line 5431
    if-ne v6, v1, :cond_2

    .line 5432
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 5437
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5438
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 5455
    .end local v1           #nState:I
    :cond_1
    :goto_1
    return-void

    .line 5433
    .restart local v1       #nState:I
    :cond_2
    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    .line 5434
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 5435
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 5441
    :cond_3
    if-eq v1, p2, :cond_1

    .line 5442
    if-ne v5, v1, :cond_4

    .line 5443
    const-string v2, "CameraSettings"

    const-string v3, "NFC is already turned off!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5447
    :cond_4
    if-ne v5, p2, :cond_5

    .line 5448
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 5449
    :cond_5
    if-ne v6, p2, :cond_1

    .line 5450
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4671
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 4672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 4673
    return-void
.end method

.method public getAntiBanding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isCSCUsedInManyCountriesForLatin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3395
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAntibandingByMCCForLatin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "50hz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3396
    const-string v1, "50hz"

    .line 3411
    :goto_0
    return-object v1

    .line 3398
    :cond_0
    const-string v1, "60hz"

    goto :goto_0

    .line 3401
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_CameraFlicker"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3402
    .local v0, flicker:Ljava/lang/String;
    const-string v1, "50hz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3403
    const-string v1, "50hz"

    goto :goto_0

    .line 3404
    :cond_2
    const-string v1, "60hz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3405
    const-string v1, "60hz"

    goto :goto_0

    .line 3406
    :cond_3
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3407
    const-string v1, "auto"

    goto :goto_0

    .line 3408
    :cond_4
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3409
    const-string v1, "off"

    goto :goto_0

    .line 3411
    :cond_5
    const-string v1, "50hz"

    goto :goto_0
.end method

.method public getAntibandingByMCCForLatin()Ljava/lang/String;
    .locals 10

    .prologue
    .line 5252
    const-string v5, "000"

    .line 5253
    .local v5, mcc:Ljava/lang/String;
    const-string v7, "gsm.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5255
    .local v6, numeric:Ljava/lang/String;
    const-string v2, "338"

    .line 5256
    .local v2, MCC_Jamaica:Ljava/lang/String;
    const-string v0, "722"

    .line 5257
    .local v0, MCC_Argentina:Ljava/lang/String;
    const-string v1, "730"

    .line 5258
    .local v1, MCC_Chile:Ljava/lang/String;
    const-string v3, "744"

    .line 5259
    .local v3, MCC_Paraguay:Ljava/lang/String;
    const-string v4, "748"

    .line 5261
    .local v4, MCC_Uruguay:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 5262
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5263
    const-string v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAntibandingByMCCForLatin : mcc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    :cond_0
    const-string v7, "338"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "722"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "730"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "744"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "748"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5268
    :cond_1
    const-string v7, "50hz"

    .line 5270
    :goto_0
    return-object v7

    :cond_2
    const-string v7, "60hz"

    goto :goto_0
.end method

.method public getAttachEmailMode()Z
    .locals 1

    .prologue
    .line 3320
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    return v0
.end method

.method public getAttachMMSMode()Z
    .locals 1

    .prologue
    .line 3312
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAttachMode()Z
    .locals 1

    .prologue
    .line 3304
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    return v0
.end method

.method public getAutoShareShotMode()I
    .locals 3

    .prologue
    .line 2747
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_auto_shareshot_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBurstMode()I
    .locals 3

    .prologue
    .line 3417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_burst_settings_key"

    sget v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_BURST_SETTINGS:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBurstShotsGuideTextDialog()I
    .locals 2

    .prologue
    .line 4881
    const-string v0, "pref_burst_shot_guide_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAdjustContrast()I
    .locals 1

    .prologue
    .line 3243
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustContrast:I

    return v0
.end method

.method public getCamcorderAdjustSaturation()I
    .locals 1

    .prologue
    .line 3267
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    return v0
.end method

.method public getCamcorderAntishake()I
    .locals 3

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAudioRecording()I
    .locals 1

    .prologue
    .line 3291
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderAutoContrast()I
    .locals 1

    .prologue
    .line 2405
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    return v0
.end method

.method public getCamcorderContrast()I
    .locals 1

    .prologue
    .line 3231
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    return v0
.end method

.method public getCamcorderEditableShortcutOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camcorder_editable_shortcut_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamcorderEffect()I
    .locals 1

    .prologue
    .line 2299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFrontEffect:I

    .line 2302
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    goto :goto_0
.end method

.method public getCamcorderExposureValue()I
    .locals 1

    .prologue
    .line 2008
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    return v0
.end method

.method public getCamcorderFlashMode()I
    .locals 3

    .prologue
    .line 2941
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_flash_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09008f

    .line 4382
    packed-switch p1, :pswitch_data_0

    .line 4394
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4384
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4386
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4388
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4390
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4392
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCamcorderOutdoorVisibility()I
    .locals 1

    .prologue
    .line 3347
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    .prologue
    .line 3027
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderRecordingMode()I
    .locals 1

    .prologue
    .line 2887
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 4

    .prologue
    .line 2971
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2975
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2977
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2978
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2984
    :goto_0
    return v0

    .line 2980
    :cond_1
    const/16 v0, 0x13

    .local v0, resolutionId:I
    goto :goto_0

    .line 2984
    .end local v0           #resolutionId:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderResolutionChanged()Z
    .locals 1

    .prologue
    .line 5212
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    return v0
.end method

.method public getCamcorderSaturation()I
    .locals 1

    .prologue
    .line 3255
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    return v0
.end method

.method public getCamcorderSharpness()I
    .locals 1

    .prologue
    .line 3279
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    return v0
.end method

.method public getCamcorderShortcutMenuID(Ljava/lang/String;)I
    .locals 1
    .parameter "shortcutname"

    .prologue
    .line 4776
    const-string v0, "selfcamcorder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4777
    const/16 v0, 0xbce

    .line 4819
    :goto_0
    return v0

    .line 4778
    :cond_0
    const-string v0, "recordingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4779
    const/16 v0, 0xbb9

    goto :goto_0

    .line 4780
    :cond_1
    const-string v0, "flashmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4781
    const/16 v0, 0xbbb

    goto :goto_0

    .line 4782
    :cond_2
    const-string v0, "exposurevalue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4783
    const/16 v0, 0xbc1

    goto :goto_0

    .line 4784
    :cond_3
    const-string v0, "timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4785
    const/16 v0, 0xbbe

    goto :goto_0

    .line 4786
    :cond_4
    const-string v0, "effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4787
    const/16 v0, 0xbc0

    goto :goto_0

    .line 4788
    :cond_5
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4789
    const/16 v0, 0xbbc

    goto :goto_0

    .line 4790
    :cond_6
    const-string v0, "whitebalance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4791
    const/16 v0, 0xbbf

    goto :goto_0

    .line 4792
    :cond_7
    const-string v0, "outdoorvisibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4793
    const/16 v0, 0xbcf

    goto :goto_0

    .line 4794
    :cond_8
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4795
    const/16 v0, 0xbc3

    goto :goto_0

    .line 4796
    :cond_9
    const-string v0, "speed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4797
    const/16 v0, 0xbd7

    goto :goto_0

    .line 4798
    :cond_a
    const-string v0, "guideline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4799
    const/16 v0, 0xbcc

    goto :goto_0

    .line 4800
    :cond_b
    const-string v0, "audiorecording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4801
    const/16 v0, 0xbcb

    goto/16 :goto_0

    .line 4802
    :cond_c
    const-string v0, "selfflip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4803
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 4804
    :cond_d
    const-string v0, "storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4805
    const/16 v0, 0xbc9

    goto/16 :goto_0

    .line 4806
    :cond_e
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4807
    const/16 v0, 0xbca

    goto/16 :goto_0

    .line 4808
    :cond_f
    const-string v0, "effect_recorder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4809
    const/16 v0, 0xbd8

    goto/16 :goto_0

    .line 4810
    :cond_10
    const-string v0, "defaultlayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4811
    const/16 v0, 0xbda

    goto/16 :goto_0

    .line 4812
    :cond_11
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4813
    const/16 v0, 0xbdc

    goto/16 :goto_0

    .line 4814
    :cond_12
    const-string v0, "adjustcontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4815
    const/16 v0, 0xbe0

    goto/16 :goto_0

    .line 4816
    :cond_13
    const-string v0, "adjustsaturation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4817
    const/16 v0, 0xbe1

    goto/16 :goto_0

    .line 4819
    :cond_14
    const/16 v0, 0x63

    goto/16 :goto_0
.end method

.method public getCamcorderSideMenuOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camcorder_sidemenu_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamcorderSlowMotion()I
    .locals 1

    .prologue
    .line 3069
    const/4 v0, 0x0

    return v0
.end method

.method public getCamcorderTimeLapse()I
    .locals 1

    .prologue
    .line 3099
    const/4 v0, 0x0

    return v0
.end method

.method public getCamcorderTimer()I
    .locals 1

    .prologue
    .line 2959
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    return v0
.end method

.method public getCamcorderVideoDuration()I
    .locals 2

    .prologue
    .line 1724
    const-string v0, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 3

    .prologue
    .line 1705
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 1707
    .local v0, microsec:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1711
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1712
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 1719
    :goto_0
    return v1

    .line 1715
    :cond_0
    const v1, 0x36ee80

    goto :goto_0

    .line 1719
    :cond_1
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_0
.end method

.method public getCamcorderZoomValue()I
    .locals 1

    .prologue
    .line 2874
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    return v0
.end method

.method public getCameraAdjustContrast()I
    .locals 1

    .prologue
    .line 2803
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustContrast:I

    return v0
.end method

.method public getCameraAdjustSaturation()I
    .locals 1

    .prologue
    .line 2827
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustSaturation:I

    return v0
.end method

.method public getCameraAntiShake()I
    .locals 3

    .prologue
    .line 2351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraAutoContrast()I
    .locals 1

    .prologue
    .line 2393
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    return v0
.end method

.method public getCameraContrast()I
    .locals 1

    .prologue
    .line 2791
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    return v0
.end method

.method public getCameraEditableShortcutOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camera_editable_shortcut_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraEffect()I
    .locals 1

    .prologue
    .line 2276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2277
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontEffect:I

    .line 2279
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    goto :goto_0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraExposureValue()I
    .locals 1

    .prologue
    .line 1996
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getCameraFlashMode()I
    .locals 3

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFlashMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraFocusMode()I
    .locals 3

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraISO()I
    .locals 1

    .prologue
    .line 2322
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1810
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    return v0
.end method

.method public getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCameraOutdoorVisibility()I
    .locals 1

    .prologue
    .line 3328
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    .prologue
    .line 2417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 2057
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolutionChanged()Z
    .locals 1

    .prologue
    .line 5204
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraReview()I
    .locals 3

    .prologue
    .line 2453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_review_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSaturation()I
    .locals 1

    .prologue
    .line 2815
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    return v0
.end method

.method public getCameraSharpness()I
    .locals 1

    .prologue
    .line 2839
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    return v0
.end method

.method public getCameraShortcutMenuID(Ljava/lang/String;)I
    .locals 1
    .parameter "shortcutname"

    .prologue
    .line 4823
    const-string v0, "selfcamera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4824
    const/16 v0, 0x24

    .line 4876
    :goto_0
    return v0

    .line 4825
    :cond_0
    const-string v0, "flashmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4826
    const/4 v0, 0x3

    goto :goto_0

    .line 4827
    :cond_1
    const-string v0, "shootingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4828
    const/4 v0, 0x1

    goto :goto_0

    .line 4829
    :cond_2
    const-string v0, "scenemode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4830
    const/4 v0, 0x2

    goto :goto_0

    .line 4831
    :cond_3
    const-string v0, "exposurevalue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4832
    const/4 v0, 0x7

    goto :goto_0

    .line 4833
    :cond_4
    const-string v0, "focusmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4834
    const/4 v0, 0x5

    goto :goto_0

    .line 4835
    :cond_5
    const-string v0, "timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4836
    const/4 v0, 0x6

    goto :goto_0

    .line 4837
    :cond_6
    const-string v0, "effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4838
    const/16 v0, 0x8

    goto :goto_0

    .line 4839
    :cond_7
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4840
    const/4 v0, 0x4

    goto :goto_0

    .line 4841
    :cond_8
    const-string v0, "whitebalance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4842
    const/16 v0, 0x9

    goto :goto_0

    .line 4843
    :cond_9
    const-string v0, "iso"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4844
    const/16 v0, 0xa

    goto :goto_0

    .line 4845
    :cond_a
    const-string v0, "exposuremeter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4846
    const/16 v0, 0xb

    goto :goto_0

    .line 4847
    :cond_b
    const-string v0, "outdoorvisibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4848
    const/16 v0, 0x23

    goto :goto_0

    .line 4849
    :cond_c
    const-string v0, "antishake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4850
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 4851
    :cond_d
    const-string v0, "autocontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4852
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 4853
    :cond_e
    const-string v0, "blinkdetection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4854
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 4855
    :cond_f
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4856
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 4857
    :cond_10
    const-string v0, "guideline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4858
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 4859
    :cond_11
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4860
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 4861
    :cond_12
    const-string v0, "shuttersound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4862
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 4863
    :cond_13
    const-string v0, "selfflip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4864
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 4865
    :cond_14
    const-string v0, "storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4866
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 4867
    :cond_15
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4868
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 4869
    :cond_16
    const-string v0, "defaultlayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4870
    const/16 v0, 0x3e

    goto/16 :goto_0

    .line 4871
    :cond_17
    const-string v0, "adjustcontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4872
    const/16 v0, 0x4a

    goto/16 :goto_0

    .line 4873
    :cond_18
    const-string v0, "adjustsaturation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4874
    const/16 v0, 0x4b

    goto/16 :goto_0

    .line 4876
    :cond_19
    const/16 v0, 0x63

    goto/16 :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    .prologue
    .line 2774
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shuttersound_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSideMenuOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camera_sidemenu_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraVoiceCommand()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2495
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2497
    const-string v1, "CameraSettings"

    const-string v2, "Voice command ON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :goto_0
    return v0

    .line 2500
    :cond_0
    const-string v0, "CameraSettings"

    const-string v2, "Voice command OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2501
    goto :goto_0
.end method

.method public getCameraZoomValue()I
    .locals 1

    .prologue
    .line 2851
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getChangeStorageSettingDialog()I
    .locals 2

    .prologue
    .line 5018
    const-string v0, "pref_change_storage_setting_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContextualFilename()I
    .locals 3

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_contextual_filename_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultAutoShareShotMode()I
    .locals 1

    .prologue
    .line 2751
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isAndroidBeamEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2752
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setAndroidBeamDisabled()V

    .line 2753
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCamcorderAntishake()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2372
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    :cond_0
    return v1
.end method

.method public getDefaultCamcorderQuality()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3173
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 3174
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3175
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_videoquality_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3176
    .local v1, quality:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCamcorderQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #quality:I
    :cond_0
    return v1
.end method

.method public getDefaultCamcorderResolution()I
    .locals 4

    .prologue
    .line 2993
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2994
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 2995
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2996
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camcorder_resolution_key"

    const-string v3, "640x480"

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3002
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 2999
    :cond_0
    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 3002
    :cond_1
    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultCameraFlashMode()I
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 1972
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCameraFocusMode()I
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    const/4 v0, 0x1

    .line 2027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCameraQuality()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3162
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 3163
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3164
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_quality_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3165
    .local v1, quality:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCameraQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #quality:I
    :cond_0
    return v1
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    const-string v0, "2048x1536"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2064
    :goto_0
    return v0

    :cond_0
    const-string v0, "640x480"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3192
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 3193
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3194
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3197
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method public getEditableShortcutHelpTextDialog()I
    .locals 2

    .prologue
    .line 4946
    const-string v0, "pref_editable_shortcut_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEffectRecorderType()I
    .locals 1

    .prologue
    .line 3382
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectRecorderType:I

    return v0
.end method

.method public getEffectResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090037

    .line 3921
    packed-switch p1, :pswitch_data_0

    .line 3931
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3923
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3925
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3927
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3929
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getExposureMeterResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090087

    .line 4237
    packed-switch p1, :pswitch_data_0

    .line 4256
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4243
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4248
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4250
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getExposureValueResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 3896
    packed-switch p1, :pswitch_data_0

    .line 3916
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3898
    :pswitch_0
    const/high16 v0, -0x4000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3900
    :pswitch_1
    const/high16 v0, -0x4040

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3902
    :pswitch_2
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3904
    :pswitch_3
    const/high16 v0, -0x4100

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3906
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3908
    :pswitch_5
    const/high16 v0, 0x3f00

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3910
    :pswitch_6
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3912
    :pswitch_7
    const/high16 v0, 0x3fc0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3914
    :pswitch_8
    const/high16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3896
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getExposuremeterFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 4676
    const/4 v0, 0x0

    .line 4678
    .local v0, nExposuremeter:I
    packed-switch p1, :pswitch_data_0

    .line 4700
    :goto_0
    :pswitch_0
    return v0

    .line 4692
    :pswitch_1
    const/4 v0, 0x2

    .line 4693
    goto :goto_0

    .line 4695
    :pswitch_2
    const/4 v0, 0x1

    .line 4696
    goto :goto_0

    .line 4678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFaceZoomHelpTextDialog()I
    .locals 2

    .prologue
    .line 4933
    const-string v0, "pref_face_zoom_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlashModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09007a

    .line 3801
    packed-switch p1, :pswitch_data_0

    .line 3809
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3803
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3805
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3807
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFocusModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09007b

    .line 3881
    packed-switch p1, :pswitch_data_0

    .line 3891
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3883
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3885
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3887
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3889
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3881
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getForcedShutterSound()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1951
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 1952
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1953
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1954
    .local v1, forcedShutterSound:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #forcedShutterSound:I
    :cond_0
    return v1
.end method

.method public getGPS()I
    .locals 3

    .prologue
    .line 2643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_gps_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    .line 2434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRHelpTextDialog()I
    .locals 2

    .prologue
    .line 4911
    const-string v0, "pref_hdr_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRIntensityMode()I
    .locals 3

    .prologue
    .line 2713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_intensity_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRModeLevel()I
    .locals 3

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRPictureMode()I
    .locals 3

    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_picture_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISOResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09003b

    .line 3953
    packed-switch p1, :pswitch_data_0

    .line 3977
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3955
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3957
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3959
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3961
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3963
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3965
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3967
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3969
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3971
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3973
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3975
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getMaxRecordingSize()J
    .locals 4

    .prologue
    .line 1769
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1770
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1771
    :cond_0
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 1777
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    return-wide v0

    .line 1774
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1850
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090001

    .line 4274
    packed-switch p1, :pswitch_data_0

    .line 4280
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4276
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4278
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNetWork()I
    .locals 3

    .prologue
    .line 2596
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_network_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 2597
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    return v0
.end method

.method public getNfcState()I
    .locals 2

    .prologue
    .line 5404
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5407
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5408
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 5410
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNumOfSupportedFrontCamcorderResolution()I
    .locals 1

    .prologue
    .line 2205
    const/4 v0, 0x0

    .line 2214
    .local v0, nNum:I
    add-int/lit8 v0, v0, 0x1

    .line 2219
    return v0
.end method

.method public getNumberOfCsShotCaptured()I
    .locals 1

    .prologue
    .line 4645
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    return v0
.end method

.method public getNumberOfCsShotSaved()I
    .locals 1

    .prologue
    .line 4653
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    return v0
.end method

.method public getOnDeviceHelpScreen()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4985
    const/4 v6, 0x0

    .line 4986
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4988
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 4990
    .local v7, result:Z
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4993
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4994
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v7, v8

    .line 4997
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5001
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 4994
    goto :goto_0

    .line 4997
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getOnOffResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 4264
    packed-switch p1, :pswitch_data_0

    .line 4269
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4266
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPreferences()Lcom/sec/android/app/camera/ComboPreferences;
    .locals 3

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 1786
    new-instance v0, Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    .line 1787
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    return-object v0
.end method

.method public getPrevSceneMode()I
    .locals 1

    .prologue
    .line 1938
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPrevSceneMode:I

    return v0
.end method

.method public getPreviousShootingMode()I
    .locals 1

    .prologue
    .line 1909
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousShootingMode:I

    return v0
.end method

.method public getQualityResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 3982
    packed-switch p1, :pswitch_data_0

    .line 3990
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3985
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3987
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3982
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecordingSpeed()I
    .locals 3

    .prologue
    .line 3044
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordingSpeed recordingmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordingSpeedResourceId()I
    .locals 1

    .prologue
    .line 4168
    const v0, 0x7f090159

    return v0
.end method

.method public getRecordingTimeLapseResourceId()I
    .locals 1

    .prologue
    .line 4194
    const v0, 0x7f090159

    return v0
.end method

.method public getRequestedRecordingSize()J
    .locals 4

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1748
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1749
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1750
    :cond_1
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 1761
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    return-wide v0

    .line 1752
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    .line 1754
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1755
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1756
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    .line 1758
    :cond_6
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0
.end method

.method public getResolutionResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090077

    .line 3814
    packed-switch p1, :pswitch_data_0

    .line 3876
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3816
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3818
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3820
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3822
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3824
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3826
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3828
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3830
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3832
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3834
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3836
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3838
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3840
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3842
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3844
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3846
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3848
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3850
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3852
    :pswitch_13
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3854
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3856
    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3858
    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3860
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3862
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3864
    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3866
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3868
    :pswitch_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3870
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3872
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3874
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3814
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_13
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_18
        :pswitch_3
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public getReviewResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f0900a4

    .line 4348
    packed-switch p1, :pswitch_data_0

    .line 4354
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4350
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4352
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSbeamHelpTextDialog()I
    .locals 2

    .prologue
    .line 4959
    const-string v0, "pref_sbeam_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    .prologue
    .line 1934
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getSceneModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090095

    .line 3766
    packed-switch p1, :pswitch_data_0

    .line 3796
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3768
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3770
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3772
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3774
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3776
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3778
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3780
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3782
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3784
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3786
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3788
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3790
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3792
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3794
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3766
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getSelectedMode()I
    .locals 3

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_selected_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelfFlip()I
    .locals 3

    .prologue
    .line 3365
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_self_flip_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelfMode()I
    .locals 1

    .prologue
    .line 1864
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    return v0
.end method

.method public getSelfToggle()Z
    .locals 1

    .prologue
    .line 1897
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfToggle:Z

    return v0
.end method

.method public getSettingValue(I)I
    .locals 7
    .parameter "menuid"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5031
    packed-switch p1, :pswitch_data_0

    .line 5195
    :pswitch_0
    const v4, -0xffff

    :cond_0
    :goto_0
    return v4

    .line 5033
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v4

    goto :goto_0

    .line 5035
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    goto :goto_0

    .line 5037
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v4

    goto :goto_0

    .line 5039
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    goto :goto_0

    .line 5041
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    goto :goto_0

    .line 5043
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    goto :goto_0

    .line 5045
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v4

    goto :goto_0

    .line 5047
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v4

    goto :goto_0

    .line 5049
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    goto :goto_0

    .line 5051
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    goto :goto_0

    .line 5053
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v4

    goto :goto_0

    .line 5055
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    goto :goto_0

    .line 5057
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v4

    goto :goto_0

    .line 5059
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v4

    goto :goto_0

    .line 5061
    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAdjustContrast()I

    move-result v4

    goto :goto_0

    .line 5063
    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAdjustSaturation()I

    move-result v4

    goto :goto_0

    .line 5065
    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    goto :goto_0

    .line 5067
    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v4

    goto :goto_0

    .line 5069
    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v4

    goto :goto_0

    .line 5072
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v4

    goto :goto_0

    .line 5075
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v4

    goto :goto_0

    .line 5077
    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    goto :goto_0

    .line 5079
    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEffectRecorderType()I

    move-result v4

    goto :goto_0

    .line 5081
    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v4

    goto :goto_0

    .line 5083
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    goto :goto_0

    .line 5086
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5088
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v4

    goto/16 :goto_0

    .line 5090
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v4

    goto/16 :goto_0

    .line 5100
    :pswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v4

    goto/16 :goto_0

    .line 5102
    :pswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v4

    goto/16 :goto_0

    .line 5104
    :pswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v4

    goto/16 :goto_0

    .line 5107
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v4

    goto/16 :goto_0

    .line 5110
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v4

    goto/16 :goto_0

    .line 5112
    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    goto/16 :goto_0

    .line 5115
    :pswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v4

    goto/16 :goto_0

    .line 5117
    :pswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    goto/16 :goto_0

    .line 5119
    :pswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    goto/16 :goto_0

    .line 5121
    :pswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v4

    goto/16 :goto_0

    .line 5123
    :pswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5125
    :pswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAdjustContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5127
    :pswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAdjustSaturation()I

    move-result v4

    goto/16 :goto_0

    .line 5129
    :pswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    goto/16 :goto_0

    .line 5131
    :pswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    goto/16 :goto_0

    .line 5133
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v4

    goto/16 :goto_0

    .line 5135
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    goto/16 :goto_0

    .line 5138
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5140
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v4

    goto/16 :goto_0

    .line 5142
    :pswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v4

    goto/16 :goto_0

    .line 5145
    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    goto/16 :goto_0

    .line 5147
    :pswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v4

    goto/16 :goto_0

    .line 5150
    :pswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    goto/16 :goto_0

    .line 5152
    :pswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v4

    goto/16 :goto_0

    .line 5154
    :pswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    goto/16 :goto_0

    .line 5157
    :pswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v6, 0xf

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    .line 5159
    :pswitch_37
    const/4 v0, 0x1

    .line 5161
    .local v0, b:Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_2

    .line 5162
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5167
    :cond_2
    :goto_2
    if-nez v0, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 5163
    :catch_0
    move-exception v1

    .line 5165
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 5169
    .end local v0           #b:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_38
    const/4 v2, 0x1

    .line 5171
    .local v2, f:Z
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_3

    .line 5172
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 5177
    :cond_3
    :goto_3
    if-nez v2, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 5173
    :catch_1
    move-exception v1

    .line 5175
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 5179
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #f:Z
    :pswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    goto/16 :goto_0

    .line 5182
    :pswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v4

    goto/16 :goto_0

    .line 5185
    :pswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    goto/16 :goto_0

    .line 5187
    :pswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoShareShotMode()I

    move-result v4

    goto/16 :goto_0

    .line 5189
    :pswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRModeLevel()I

    move-result v4

    goto/16 :goto_0

    .line 5191
    :pswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v4

    goto/16 :goto_0

    .line 5193
    :pswitch_3f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRPictureMode()I

    move-result v4

    goto/16 :goto_0

    .line 5031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_16
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_3c
        :pswitch_33
        :pswitch_3d
        :pswitch_3b
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_2b
        :pswitch_2d
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_35
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_1f
        :pswitch_34
        :pswitch_14
        :pswitch_0
        :pswitch_2a
        :pswitch_2c
        :pswitch_17
        :pswitch_0
        :pswitch_3a
        :pswitch_15
        :pswitch_0
        :pswitch_33
        :pswitch_3b
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public getShootAndShare()I
    .locals 3

    .prologue
    .line 2562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shootandshare_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    .line 2563
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    return v0
.end method

.method public getShootingMode()I
    .locals 1

    .prologue
    .line 1905
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    return v0
.end method

.method public getShootingModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090025

    .line 4285
    packed-switch p1, :pswitch_data_0

    .line 4328
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4287
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4289
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4291
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4293
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4295
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4297
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4299
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4301
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4303
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4305
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4307
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4309
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4314
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4316
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4318
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4320
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4322
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4324
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4326
    :pswitch_13
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public getShortcutMenuID(Ljava/lang/String;)I
    .locals 2
    .parameter "shortcutname"

    .prologue
    .line 4765
    const/16 v0, 0x63

    .line 4766
    .local v0, menuid:I
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_0

    .line 4767
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 4771
    :goto_0
    return v0

    .line 4769
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getShutterSoundResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f0900a3

    .line 4359
    packed-switch p1, :pswitch_data_0

    .line 4365
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4361
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4363
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSingleShotBurstHelpTextDialog()I
    .locals 2

    .prologue
    .line 4907
    const-string v0, "pref_single_shot_burst_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlowMotionTimescale()I
    .locals 1

    .prologue
    .line 4144
    const/4 v0, 0x1

    return v0
.end method

.method public getSnapshotLimitationDialog()I
    .locals 2

    .prologue
    .line 4972
    const-string v0, "pref_snap_shot_limitation_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSpeedResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 3202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorageForBurstDialog()I
    .locals 2

    .prologue
    .line 4894
    const-string v0, "pref_storage_burst_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorageResourceString(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 4370
    const v0, 0x7f09008d

    .line 4371
    .local v0, storageString:I
    packed-switch p1, :pswitch_data_0

    .line 4377
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 4373
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4375
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTimeLapseFps(D)D
    .locals 0
    .parameter "sensorInputFps"

    .prologue
    .line 4127
    return-wide p1
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 2045
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getTimerResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f0900a4

    .line 4333
    packed-switch p1, :pswitch_data_0

    .line 4343
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4335
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4337
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4339
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4341
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTopActivityName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5458
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 5459
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 5460
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 5462
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 2582
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeKey()I
    .locals 3

    .prologue
    .line 2474
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_volumekey_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .prologue
    .line 2261
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getWhiteBalanceResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09003b

    .line 3936
    packed-switch p1, :pswitch_data_0

    .line 3948
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3938
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3940
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3942
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3944
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3946
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3936
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getWifiP2pDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5278
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiP2pDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5274
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleNotification(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 3466
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 3467
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3469
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 3472
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3473
    return-void
.end method

.method public initializeCamcorder()V
    .locals 1

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeBackCamcorder()V

    .line 1484
    :goto_0
    return-void

    .line 1482
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeFrontCamcorder()V

    goto :goto_0
.end method

.method public initializeCamera()V
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeBackCamera()V

    .line 890
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public isAndroidBeamEnabled()Z
    .locals 2

    .prologue
    .line 5386
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5388
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5389
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    .line 5391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCSCUsedInManyCountriesForLatin()Z
    .locals 3

    .prologue
    .line 5241
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5243
    .local v0, code:Ljava/lang/String;
    const-string v1, "TFG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5244
    :cond_0
    const-string v1, "CameraSettings"

    const-string v2, "isCSCUsedInManyCountriesForLatin : SalesCode = TFG, TPA, TTT, JDI, PCI "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    const/4 v1, 0x1

    .line 5248
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCamcorderFastMotionEnabled()Z
    .locals 1

    .prologue
    .line 4086
    const/4 v0, 0x0

    return v0
.end method

.method public isCamcorderSlowMotionEnabled()Z
    .locals 1

    .prologue
    .line 4068
    const/4 v0, 0x0

    return v0
.end method

.method public isCamcorderSpeedControlReset(II)Z
    .locals 1
    .parameter "speed"
    .parameter "prevSpeed"

    .prologue
    .line 4050
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcEnabled()Z
    .locals 2

    .prologue
    .line 5395
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5397
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5398
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    .line 5400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isNotificationExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3476
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3477
    const/4 v0, 0x1

    .line 3478
    :cond_0
    return v0
.end method

.method public isP2pEnabled()Z
    .locals 5

    .prologue
    .line 5360
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5361
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 5362
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5366
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 5363
    :catch_0
    move-exception v1

    .line 5364
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "CameraSettings"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRecordingSpeedControlEnabled()Z
    .locals 1

    .prologue
    .line 4025
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBackCamcorderResolutionFeature(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2185
    packed-switch p1, :pswitch_data_0

    .line 2199
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2193
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2195
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2197
    goto :goto_0

    .line 2185
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2069
    packed-switch p1, :pswitch_data_0

    .line 2125
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2091
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2099
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2103
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2109
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 2115
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 2117
    goto :goto_0

    .line 2069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    const/4 v0, 0x0

    .line 2223
    packed-switch p1, :pswitch_data_0

    .line 2237
    :goto_0
    :pswitch_0
    return v0

    .line 2231
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2223
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    const/4 v0, 0x0

    .line 2130
    packed-switch p1, :pswitch_data_0

    .line 2180
    :goto_0
    :pswitch_0
    return v0

    .line 2176
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isVideocallPresetSelected()Z
    .locals 1

    .prologue
    .line 4661
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    return v0
.end method

.method public varargs loadFromPreferences([I)V
    .locals 7
    .parameter "indices"

    .prologue
    .line 1043
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1044
    .local v2, index:I
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromPreferences - index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sparse-switch v2, :sswitch_data_0

    .line 1190
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in loadFromPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1047
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 1048
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlashMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1052
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1053
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1057
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 1058
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1062
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 1063
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1067
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 1068
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mISO : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1072
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 1073
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mExposureMeter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1077
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    .line 1078
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1082
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 1083
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutoContrast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1087
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 1088
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1093
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 1094
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1099
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    .line 1100
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1105
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    .line 1106
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVoiceCommand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1111
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 1112
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGuideLine : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1117
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 1118
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGPS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1122
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1123
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShutterSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1128
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1129
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStorage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1133
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 1134
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1138
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1139
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderFlashMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1143
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    sput v4, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1144
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    sget v4, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1148
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1149
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1153
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1154
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAutoContrast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1158
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1159
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1163
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 1164
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1169
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    .line 1170
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContextualFilename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1174
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    .line 1175
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBurstmode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1179
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 1180
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1181
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHDRmodeLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1184
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRPictureMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    .line 1185
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHDRmodePicture : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1194
    .end local v2           #index:I
    :cond_0
    return-void

    .line 1045
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x26 -> :sswitch_10
        0x2f -> :sswitch_18
        0x30 -> :sswitch_17
        0x32 -> :sswitch_b
        0x34 -> :sswitch_a
        0x36 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x67 -> :sswitch_11
        0x68 -> :sswitch_12
        0x6c -> :sswitch_13
        0x6e -> :sswitch_14
        0x6f -> :sswitch_15
        0x75 -> :sswitch_f
        0x78 -> :sswitch_9
        0x7b -> :sswitch_c
        0x7d -> :sswitch_16
        0x81 -> :sswitch_17
        0x82 -> :sswitch_d
        0x84 -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3455
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"
    .parameter "syncmode"

    .prologue
    .line 3458
    if-eqz p3, :cond_0

    .line 3459
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 3463
    :goto_0
    return-void

    .line 3461
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1702
    return-void
.end method

.method public refreshButtonDimForCamcorder()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1583
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 1584
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0x6e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1585
    const/16 v1, 0x75

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1586
    const/16 v1, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1587
    const/16 v1, 0x65

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1588
    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1590
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1591
    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1594
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1596
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1605
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x79

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1606
    return-void

    .line 1597
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1598
    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1600
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1603
    :cond_3
    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public refreshButtonDimForCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 970
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 971
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 972
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 973
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 974
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 975
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 976
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 977
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 979
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 980
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 984
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 989
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x24

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 990
    return-void

    .line 986
    :cond_1
    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public refreshCamcorderSettingValues()V
    .locals 2

    .prologue
    .line 1201
    const/16 v0, 0x6c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1202
    return-void
.end method

.method public refreshCamcorderSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCommonSettingValuesFromPreferences()V

    .line 1036
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->loadFromPreferences([I)V

    .line 1039
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    .line 1040
    return-void

    .line 1036
    :array_0
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public refreshCameraSettingValues()V
    .locals 2

    .prologue
    .line 1197
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1198
    return-void
.end method

.method public refreshCameraSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCommonSettingValuesFromPreferences()V

    .line 1025
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->loadFromPreferences([I)V

    .line 1031
    return-void

    .line 1025
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public refreshCommonSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 1018
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->loadFromPreferences([I)V

    .line 1019
    return-void

    .line 1018
    nop

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 3442
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 3443
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    monitor-exit v1

    .line 3445
    return-void

    .line 3444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetButtonDim()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    .line 1015
    return-void
.end method

.method public resetCamcorderSettingsToDefault()V
    .locals 1

    .prologue
    .line 4618
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCommonGlobalSettings()V

    .line 4619
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCamcorderGlobalSettings()V

    .line 4622
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCamcorderLocalSettings(I)V

    .line 4623
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCamcorderLocalSettings(I)V

    .line 4624
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    .prologue
    .line 4537
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCommonGlobalSettings()V

    .line 4538
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraGlobalSettings()V

    .line 4541
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 4542
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 4543
    return-void
.end method

.method public resetCameraZoomValue()V
    .locals 2

    .prologue
    .line 2869
    const-string v0, "CameraSettings"

    const-string v1, "resetCameraZoomValue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 2871
    return-void
.end method

.method public resetLayout()V
    .locals 1

    .prologue
    .line 4627
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_0

    .line 4628
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 4629
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSideMenuOrder(Ljava/lang/String;)V

    .line 4630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 4631
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEditableShortcutOrder(Ljava/lang/String;)V

    .line 4638
    :goto_0
    return-void

    .line 4633
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 4634
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSideMenuOrder(Ljava/lang/String;)V

    .line 4635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 4636
    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEditableShortcutOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2927
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2928
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    .line 2932
    :goto_0
    return-void

    .line 2930
    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    goto :goto_0
.end method

.method public resetObservers()V
    .locals 2

    .prologue
    .line 4665
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 4666
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4667
    monitor-exit v1

    .line 4668
    return-void

    .line 4667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V
    .locals 4
    .parameter "map"

    .prologue
    .line 1361
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1362
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1364
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1366
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method saveBitmapFile(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bmp"

    .prologue
    .line 5282
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_DIR:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5283
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5284
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5286
    :cond_0
    const/4 v2, 0x0

    .line 5288
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5289
    .end local v2           #f:Ljava/io/FileOutputStream;
    .local v3, f:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 5294
    .end local v3           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_1

    .line 5296
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5301
    :cond_1
    :goto_1
    return-void

    .line 5290
    :catch_0
    move-exception v1

    .line 5291
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 5297
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 5299
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5290
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v3       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setAndroidBeamDisabled()V
    .locals 2

    .prologue
    .line 5414
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5416
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5417
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5418
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 5420
    :cond_0
    return-void
.end method

.method public setAttachEmailMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3324
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    .line 3325
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3316
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 3317
    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3308
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 3309
    return-void
.end method

.method public setAutoShareShotMode(I)V
    .locals 4
    .parameter "autoshareshotmode"

    .prologue
    const/4 v3, 0x0

    .line 2757
    if-nez p1, :cond_1

    .line 2758
    sput-boolean v3, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    .line 2761
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_auto_shareshot_key"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    .line 2762
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    if-eq v1, p1, :cond_0

    .line 2763
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoShareShotMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    .line 2765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2766
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_auto_shareshot_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2769
    const/16 v1, 0x31

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2771
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 2760
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    goto :goto_0
.end method

.method public setBurstMode(I)V
    .locals 4
    .parameter "burstmode"

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_burst_settings_key"

    sget v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_BURST_SETTINGS:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    .line 3430
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    if-eq v1, p1, :cond_0

    .line 3431
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    .line 3433
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3434
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_burst_settings_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3437
    const/16 v1, 0x2f

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3439
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBurstShotsGuideTextDialog(I)V
    .locals 4
    .parameter "burstShotsGuideTextDialog"

    .prologue
    .line 4885
    const-string v1, "pref_burst_shot_guide_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4886
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceZoomHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4888
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_burst_shot_guide_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4889
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4891
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAdjustContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 3247
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustContrast:I

    if-eq v0, p1, :cond_0

    .line 3248
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAdjustContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 3250
    const/16 v0, 0x86

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3252
    :cond_0
    return-void
.end method

.method public setCamcorderAdjustSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 3271
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    if-eq v0, p1, :cond_0

    .line 3272
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAdjustSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 3274
    const/16 v0, 0x87

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3276
    :cond_0
    return-void
.end method

.method public setCamcorderAntishake(I)V
    .locals 4
    .parameter "antishake"

    .prologue
    .line 2380
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 2381
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    if-eq v1, p1, :cond_0

    .line 2382
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 2384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2385
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2388
    const/16 v1, 0x7d

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2390
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3
    .parameter "audioRecording"

    .prologue
    .line 3295
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    .line 3296
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 3299
    const/16 v0, 0x77

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3301
    :cond_0
    return-void
.end method

.method public setCamcorderAutoContrast(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 2409
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    if-eq v0, p1, :cond_0

    .line 2410
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAutocontrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 2412
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2414
    :cond_0
    return-void
.end method

.method public setCamcorderContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 3235
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    if-eq v0, p1, :cond_0

    .line 3236
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 3238
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3240
    :cond_0
    return-void
.end method

.method public setCamcorderEditableShortcutOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4754
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_editable_shortcut_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 4755
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4756
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 4758
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4759
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camcorder_editable_shortcut_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4760
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4762
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/16 v3, 0x6c

    .line 2306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2307
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderFrontEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFrontEffect:I

    if-eq v0, p1, :cond_0

    .line 2309
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFrontEffect:I

    .line 2311
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2319
    :goto_0
    return-void

    .line 2313
    :cond_1
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eq v0, p1, :cond_2

    .line 2315
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 2317
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCamcorderExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 2012
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    if-eq v0, p1, :cond_0

    .line 2013
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 2015
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2017
    :cond_0
    return-void
.end method

.method public setCamcorderFlashMode(I)V
    .locals 4
    .parameter "flashMode"

    .prologue
    .line 2946
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_flash_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 2947
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    if-eq v1, p1, :cond_0

    .line 2948
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 2950
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2951
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2952
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2954
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2956
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 3351
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 3352
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 3354
    const/16 v0, 0x7a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3356
    if-nez p1, :cond_1

    .line 3357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 3362
    :cond_0
    :goto_0
    return-void

    .line 3359
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    goto :goto_0
.end method

.method public setCamcorderQuality(I)V
    .locals 4
    .parameter "quality"

    .prologue
    .line 3031
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 3032
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    .line 3033
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 3035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3036
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3037
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3039
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3041
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderRecordingMode(I)V
    .locals 3
    .parameter "recordingMode"

    .prologue
    .line 2891
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    .line 2892
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 2895
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2896
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackRecordingMode:I

    .line 2901
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 2920
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2922
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleCamcorderRecordingModeChanged(I)V

    .line 2924
    :cond_0
    return-void

    .line 2898
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontRecordingMode:I

    goto :goto_0
.end method

.method public setCamcorderResolution(I)Z
    .locals 6
    .parameter "resolution"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3008
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3023
    :cond_0
    :goto_0
    return v1

    .line 3011
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 3012
    sget v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v3, p1, :cond_0

    .line 3013
    const-string v1, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCamcorderResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    sput p1, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 3015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3016
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    sget v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3017
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3019
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 3020
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    move v1, v2

    .line 3021
    goto :goto_0
.end method

.method public setCamcorderResolutionChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 5208
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    .line 5209
    return-void
.end method

.method public setCamcorderResolutionCheck()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 5466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5467
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5468
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5469
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 5483
    :cond_0
    :goto_0
    return-void

    .line 5470
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5471
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_0

    .line 5475
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5477
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_0

    .line 5478
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5479
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_0
.end method

.method public setCamcorderSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 3259
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    if-eq v0, p1, :cond_0

    .line 3260
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 3262
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3264
    :cond_0
    return-void
.end method

.method public setCamcorderSettingValuesAsDefault()V
    .locals 1

    .prologue
    .line 1212
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSettingValuesAsDefault([I)V

    .line 1217
    return-void

    .line 1212
    nop

    :array_0
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setCamcorderSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 3283
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    if-eq v0, p1, :cond_0

    .line 3284
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 3286
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3288
    :cond_0
    return-void
.end method

.method public setCamcorderSideMenuOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_sidemenu_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 4724
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4725
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderSidemenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 4727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4728
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camcorder_sidemenu_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4729
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4731
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderSlowMotion(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 3093
    return-void
.end method

.method public setCamcorderTimeLapse(I)V
    .locals 0
    .parameter "timelapse"

    .prologue
    .line 3123
    return-void
.end method

.method public setCamcorderTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 2963
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    if-eq v0, p1, :cond_0

    .line 2964
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 2966
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2968
    :cond_0
    return-void
.end method

.method public setCamcorderVideoDuration(I)V
    .locals 4
    .parameter "videoDuration"

    .prologue
    .line 1728
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1729
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    .line 1730
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1733
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1734
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1736
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 2878
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2879
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 2881
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2883
    :cond_0
    return-void
.end method

.method public setCameraAdjustContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 2807
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustContrast:I

    if-eq v0, p1, :cond_0

    .line 2808
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAdjustContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustContrast:I

    .line 2810
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2812
    :cond_0
    return-void
.end method

.method public setCameraAdjustSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 2831
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustSaturation:I

    if-eq v0, p1, :cond_0

    .line 2832
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAdjustSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAdjustSaturation:I

    .line 2834
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2836
    :cond_0
    return-void
.end method

.method public setCameraAntiShake(I)V
    .locals 4
    .parameter "antishake"

    .prologue
    .line 2355
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    .line 2356
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    if-eq v1, p1, :cond_0

    .line 2357
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    .line 2359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2360
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2363
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2365
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraAutoContrast(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 2397
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    if-eq v0, p1, :cond_0

    .line 2398
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAutoContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 2400
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2402
    :cond_0
    return-void
.end method

.method public setCameraContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 2795
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    if-eq v0, p1, :cond_0

    .line 2796
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 2798
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2800
    :cond_0
    return-void
.end method

.method public setCameraEditableShortcutOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_editable_shortcut_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 4740
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4741
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 4743
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4744
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camera_editable_shortcut_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4745
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4747
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/16 v3, 0x8

    .line 2283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2284
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontEffect:I

    if-eq v0, p1, :cond_0

    .line 2286
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontEffect:I

    .line 2288
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2296
    :goto_0
    return-void

    .line 2290
    :cond_1
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_2

    .line 2292
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 2294
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraExposureMeter(I)V
    .locals 4
    .parameter "exposuremeter"

    .prologue
    .line 2338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 2339
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    if-eq v1, p1, :cond_0

    .line 2340
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    .line 2342
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2343
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2346
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2348
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 2000
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    .line 2001
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 2003
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2005
    :cond_0
    return-void
.end method

.method public setCameraFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const/4 v4, 0x1

    .line 1977
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFlashMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 1978
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_0

    .line 1979
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 1981
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1982
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1983
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1985
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1987
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1988
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-nez v1, :cond_2

    .line 1989
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1993
    :cond_1
    :goto_0
    return-void

    .line 1990
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-ne v1, v4, :cond_1

    .line 1991
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_0
.end method

.method public setCameraFocusMode(I)V
    .locals 4
    .parameter "focusMode"

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 2033
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    .line 2034
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 2036
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2037
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2038
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2040
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2042
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraISO(I)V
    .locals 3
    .parameter "iso"

    .prologue
    .line 2326
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v0, p1, :cond_0

    .line 2327
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 2329
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2331
    :cond_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 1819
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1820
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraId - wrong camera id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :goto_0
    return-void

    .line 1823
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1824
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1826
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1828
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1830
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    .line 1832
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1833
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_0

    .line 1835
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_0
.end method

.method public setCameraOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 3332
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 3333
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 3335
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3338
    if-nez p1, :cond_1

    .line 3339
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 3344
    :cond_0
    :goto_0
    return-void

    .line 3341
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    goto :goto_0
.end method

.method public setCameraQuality(I)V
    .locals 4
    .parameter "quality"

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 2422
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    .line 2423
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 2425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2426
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2429
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2431
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 5
    .parameter "resolution"

    .prologue
    const/4 v1, 0x1

    .line 2243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 2244
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v2, p1, :cond_0

    .line 2246
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 2248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2249
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2253
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2254
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2257
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 5200
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    .line 5201
    return-void
.end method

.method public setCameraReview(I)V
    .locals 4
    .parameter "review"

    .prologue
    .line 2457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_review_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 2458
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    .line 2459
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 2461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2462
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2465
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2466
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2471
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2468
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x78

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 2819
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    if-eq v0, p1, :cond_0

    .line 2820
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 2822
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2824
    :cond_0
    return-void
.end method

.method public setCameraSettingValuesAsDefault()V
    .locals 1

    .prologue
    .line 1205
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSettingValuesAsDefault([I)V

    .line 1209
    return-void

    .line 1205
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setCameraSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 2843
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    if-eq v0, p1, :cond_0

    .line 2844
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 2846
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2848
    :cond_0
    return-void
.end method

.method public setCameraShutterSound(I)V
    .locals 4
    .parameter "shuttersound"

    .prologue
    .line 2778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_shuttersound_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 2779
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 2780
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 2782
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2783
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_shuttersound_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2784
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2786
    const/16 v1, 0x15

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2788
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraSideMenuOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_sidemenu_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 4709
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4710
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraSidemenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 4712
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4713
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camera_sidemenu_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4714
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4716
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraVoiceCommand(I)V
    .locals 8
    .parameter "voicecommand"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2505
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_camera"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 2507
    iput v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    .line 2511
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    if-eq v3, p1, :cond_0

    .line 2512
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCameraVoiceCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    .line 2514
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    if-ne v3, v6, :cond_5

    .line 2516
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    .line 2518
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2519
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.vlingo.midas"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 2521
    .local v0, ApplicationState:I
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 2524
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2525
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2526
    const-string v3, "app_package_name"

    const-string v4, "com.vlingo.midas"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2527
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2559
    .end local v0           #ApplicationState:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return-void

    .line 2509
    :cond_1
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    goto :goto_0

    .line 2530
    .restart local v0       #ApplicationState:I
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2531
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.vlingo.midas"

    const-string v4, "com.samsung.bargeinsetting.VoiceInputControlSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2532
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 2553
    .end local v0           #ApplicationState:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :goto_2
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v3, :cond_6

    .line 2554
    const/16 v3, 0x32

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 2535
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_camera"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 2537
    const-string v3, "CameraSettings"

    const-string v4, "setCameraVoiceCommand ON"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2539
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_camera"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2540
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 2541
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 2542
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    goto :goto_2

    .line 2547
    :cond_5
    const-string v3, "CameraSettings"

    const-string v4, "setCameraVoiceCommand OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_camera"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2549
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 2550
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 2551
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->hideHelpText()V

    goto :goto_2

    .line 2556
    :cond_6
    const/16 v3, 0x84

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1
.end method

.method public setCameraZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 2855
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2856
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 2858
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2860
    :cond_0
    return-void
.end method

.method public setCameraZoomValueForced(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 2863
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValueForced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 2865
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2866
    return-void
.end method

.method public setChangeStorageSettingDialog(I)V
    .locals 4
    .parameter "changeStorageSettingDialog"

    .prologue
    .line 5022
    const-string v1, "pref_change_storage_setting_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5023
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangeStorageSettingDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5025
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_change_storage_setting_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5026
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5028
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setContextualFilename(I)V
    .locals 4
    .parameter "contextualFilename"

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_contextual_filename_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    .line 2681
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    if-eq v1, p1, :cond_0

    .line 2682
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContextualFilename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    .line 2684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2685
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_contextual_filename_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContextualFilename:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2686
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2687
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2688
    const/16 v1, 0x30

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2693
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2690
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x81

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setDefaultCamcorderEditableShortcutOrder()V
    .locals 6

    .prologue
    const/16 v5, 0x63

    .line 1679
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1680
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1681
    .local v2, temp:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1684
    .end local v2           #temp:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1685
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v3, ""

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1686
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1688
    .local v0, id:I
    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1689
    const/16 v3, 0x33

    if-ne v0, v3, :cond_2

    .line 1690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 1693
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 1696
    .end local v0           #id:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1698
    return-void
.end method

.method public setDefaultCamcorderSideMenuOrder()V
    .locals 10

    .prologue
    const v9, 0x7f080016

    .line 1619
    const/4 v3, 0x0

    .line 1620
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1621
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1622
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCamcorderSideMenuOrder from csc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1625
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    .local v5, st:Ljava/util/StringTokenizer;
    const-string v6, ""

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1628
    :cond_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1629
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1630
    .local v0, commandId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1631
    add-int/lit8 v3, v3, 0x1

    .line 1632
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 1653
    .end local v0           #commandId:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v1, v6, :cond_5

    .line 1655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1638
    .end local v1           #i:I
    :cond_2
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1640
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v6, ""

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1641
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1642
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1643
    .local v2, id:I
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1644
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1646
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1648
    :cond_4
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1658
    .end local v2           #id:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xbd0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1659
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCamcorderSideMenuOrder, order "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void
.end method

.method public setDefaultCamcorderVideoDuration()V
    .locals 3

    .prologue
    .line 1739
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 1740
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1741
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1742
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1743
    return-void
.end method

.method public setDefaultCameraEditableShortcutOrder()V
    .locals 7

    .prologue
    const/16 v6, 0x63

    .line 1453
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1454
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, temp:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1458
    .end local v2           #temp:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1459
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v3, ""

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1460
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1462
    .local v0, id:I
    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1463
    const/16 v3, 0x14

    if-ne v0, v3, :cond_3

    .line 1464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 1466
    :cond_3
    const/16 v3, 0x15

    if-ne v0, v3, :cond_5

    .line 1467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v3, ""

    goto :goto_2

    .line 1470
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto/16 :goto_0

    .line 1473
    .end local v0           #id:I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1474
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void
.end method

.method public setDefaultCameraSideMenuOrder()V
    .locals 10

    .prologue
    const v9, 0x7f080016

    .line 1389
    const/4 v3, 0x0

    .line 1390
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1391
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1392
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCameraSideMenuOrder from csc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1395
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .local v5, st:Ljava/util/StringTokenizer;
    const-string v6, ""

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1398
    :cond_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1399
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1400
    .local v0, commandId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1401
    add-int/lit8 v3, v3, 0x1

    .line 1402
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 1421
    .end local v0           #commandId:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1422
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v1, v6, :cond_5

    .line 1423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1407
    .end local v1           #i:I
    :cond_2
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1408
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v6, ""

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1409
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1410
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1411
    .local v2, id:I
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1412
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1414
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1416
    :cond_4
    sget-object v6, Lcom/sec/android/app/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1426
    .end local v2           #id:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1427
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCameraSideMenuOrder, order "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void
.end method

.method public setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V
    .locals 3
    .parameter "iShootShareService"

    .prologue
    .line 5344
    if-eqz p1, :cond_1

    .line 5345
    const-string v1, "CameraSettings"

    const-string v2, "setDeviceName is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5348
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    .line 5349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDeviceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5356
    :cond_1
    :goto_0
    return-void

    .line 5351
    :catch_0
    move-exception v0

    .line 5353
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDeviceType()V
    .locals 8

    .prologue
    const/16 v5, 0xc

    const/16 v7, 0x9

    const/4 v6, 0x1

    .line 5304
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .line 5319
    .local v2, sDeviceTypeImages:[I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWifiP2pDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 5320
    .local v0, device:Ljava/lang/String;
    const/4 v3, 0x0

    .line 5323
    .local v3, tokens:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5324
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5327
    :cond_0
    if-eqz v0, :cond_1

    array-length v4, v3

    if-ge v4, v6, :cond_2

    .line 5328
    :cond_1
    const-string v4, "CameraSettings"

    const-string v5, "Malformed primaryDeviceType"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5329
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    .line 5341
    :goto_0
    return-void

    .line 5333
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5334
    .local v1, mDeviceType:I
    if-lt v1, v6, :cond_3

    if-ge v1, v5, :cond_3

    .line 5335
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5338
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5304
    :array_0
    .array-data 0x4
        0x4t 0x2t 0x2t 0x7ft
        0x8t 0x2t 0x2t 0x7ft
        0xbt 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
        0xct 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
        0x9t 0x2t 0x2t 0x7ft
        0x7t 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public setEditableShortcutHelpTextDialog(I)V
    .locals 4
    .parameter "editableShortcutHelpTextDialog"

    .prologue
    .line 4950
    const-string v1, "pref_editable_shortcut_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4951
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEditableShortcutHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4953
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_editable_shortcut_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4954
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4956
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setEffectRecorderType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 3386
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectRecorderType:I

    if-eq v0, p1, :cond_0

    .line 3387
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEffectRecorderType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectRecorderType:I

    .line 3389
    const/16 v0, 0x7f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3391
    :cond_0
    return-void
.end method

.method public setFaceZoomHelpTextDialog(I)V
    .locals 4
    .parameter "faceZoomHelpTextDialog"

    .prologue
    .line 4937
    const-string v1, "pref_face_zoom_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4938
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceZoomHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4940
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_face_zoom_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4941
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4943
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setGPS(I)V
    .locals 6
    .parameter "gps"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2647
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_gps_key"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 2648
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    if-eq v1, p1, :cond_0

    .line 2649
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    .line 2651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2654
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2655
    const/16 v1, 0x14

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2659
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    if-nez v1, :cond_2

    .line 2660
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2661
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 2662
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setWeatherConnect(Z)V

    .line 2673
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    return-void

    .line 2657
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x82

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    .line 2664
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGpsPopupDisplayed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2666
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2667
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 2669
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setWeatherConnect(Z)V

    goto :goto_1
.end method

.method public setGuideline(I)V
    .locals 4
    .parameter "guideline"

    .prologue
    .line 2438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 2439
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    if-eq v1, p1, :cond_0

    .line 2440
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    .line 2442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2443
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2445
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2446
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2450
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2448
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x7b

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setHDRHelpTextDialog(I)V
    .locals 4
    .parameter "HDRHelpTextDialog"

    .prologue
    .line 4924
    const-string v1, "pref_hdr_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4925
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4927
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_hdr_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4928
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4930
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHDRIntensityMode(I)V
    .locals 4
    .parameter "mHDRIntensityMode"

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_intensity_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2718
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    if-eq v1, p1, :cond_0

    .line 2719
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2722
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_intensity_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2723
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2725
    const/16 v1, 0x36

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2727
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHDRModeLevel(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2701
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    if-eq v1, p1, :cond_0

    .line 2702
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2705
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2706
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2708
    const/16 v1, 0x33

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2710
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHDRPictureMode(I)V
    .locals 4
    .parameter "mHDRPictureMode"

    .prologue
    .line 2734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_picture_mode_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    .line 2735
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    if-eq v1, p1, :cond_0

    .line 2736
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRPicturemode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    .line 2738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2739
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_picture_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2742
    const/16 v1, 0x37

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2744
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setMaxRecordingSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1781
    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    .line 1782
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1854
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    .line 1855
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 1857
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1859
    :cond_0
    return-void
.end method

.method public setNetWork(I)V
    .locals 7
    .parameter "network"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2601
    const/4 v0, 0x1

    .line 2603
    .local v0, b:Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_0

    .line 2604
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v0

    .line 2605
    :cond_0
    if-eqz v0, :cond_3

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 2606
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_1

    .line 2607
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v6, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2608
    const/16 v3, 0x2a

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2614
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camera_network_key"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 2615
    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_2

    .line 2616
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    .line 2618
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2619
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_network_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mNetwork:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2620
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2622
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 2605
    goto :goto_0

    :cond_4
    move v3, v5

    .line 2607
    goto :goto_1

    .line 2610
    :catch_0
    move-exception v1

    .line 2612
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setNumberOfCsShotCaptured(I)V
    .locals 0
    .parameter "mNumberOfCsShotCaptured"

    .prologue
    .line 4641
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 4642
    return-void
.end method

.method public setNumberOfCsShotSaved(I)V
    .locals 0
    .parameter "mNumberOfCsShotSaved"

    .prologue
    .line 4649
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 4650
    return-void
.end method

.method public setOnDeviceHelpScreen(Z)V
    .locals 5
    .parameter "onDeviceHelpScreen"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 5006
    if-ne p1, v2, :cond_0

    .line 5007
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 5012
    .local v1, values:Landroid/content/ContentValues;
    :goto_0
    const-string v2, "displayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5013
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5014
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5015
    return-void

    .line 5009
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public setPreviewFileReceived(I)V
    .locals 6
    .parameter "previewFileReceived"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2625
    const/4 v0, 0x1

    .line 2626
    .local v0, b:Z
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2629
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_2

    .line 2630
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z

    move-result v0

    .line 2631
    :cond_2
    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviewFileReceived:I

    .line 2632
    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviewFileReceived:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 2633
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v5, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v0, :cond_4

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2634
    const/16 v2, 0x2a

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2636
    :catch_0
    move-exception v1

    .line 2638
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    move v2, v4

    .line 2631
    goto :goto_1

    :cond_4
    move v2, v4

    .line 2633
    goto :goto_2
.end method

.method public setRecordingSpeed(I)V
    .locals 3
    .parameter "speed"

    .prologue
    .line 3056
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recordingmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-void
.end method

.method public setRequestedRecordingSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1765
    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 1766
    return-void
.end method

.method public setSbeamHelpTextDialog(I)V
    .locals 4
    .parameter "sbeamHelpTextDialog"

    .prologue
    .line 4963
    const-string v1, "pref_sbeam_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4964
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSbeamHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4966
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_sbeam_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4969
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 1942
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    .line 1943
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPrevSceneMode:I

    .line 1945
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 1946
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 1948
    :cond_0
    return-void
.end method

.method public setSelectedMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_selected_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelectedMode:I

    .line 1873
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelectedMode:I

    if-eq v1, p1, :cond_0

    .line 1874
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectedMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelectedMode:I

    .line 1876
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1877
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_selected_mode_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1878
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1880
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSelfFlip(I)V
    .locals 4
    .parameter "flip"

    .prologue
    .line 3369
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_self_flip_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 3370
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    if-eq v1, p1, :cond_0

    .line 3371
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    .line 3373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3374
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3377
    const/16 v1, 0x26

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3379
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSelfToggle(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 1901
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfToggle:Z

    .line 1902
    return-void
.end method

.method public varargs setSettingValuesAsDefault([I)V
    .locals 9
    .parameter "indices"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1220
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1221
    .local v2, index:I
    sparse-switch v2, :sswitch_data_0

    .line 1354
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in setSettingValuesAsDefault : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1223
    :sswitch_1
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1224
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1227
    :sswitch_2
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 1228
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1231
    :sswitch_3
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 1232
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1235
    :sswitch_4
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 1236
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1241
    :sswitch_5
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 1242
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1245
    :sswitch_6
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 1246
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1249
    :sswitch_7
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 1250
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1253
    :sswitch_8
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 1254
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1257
    :sswitch_9
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 1258
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1261
    :sswitch_a
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 1262
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1265
    :sswitch_b
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    .line 1266
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1281
    :sswitch_c
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1282
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1285
    :sswitch_d
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1286
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1289
    :sswitch_e
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1290
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1293
    :sswitch_f
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1294
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1297
    :sswitch_10
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1298
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1301
    :sswitch_11
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1302
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1305
    :sswitch_12
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1306
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1309
    :sswitch_13
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1310
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1313
    :sswitch_14
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1314
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1317
    :sswitch_15
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1318
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1333
    :sswitch_16
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    .line 1334
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1337
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoShareShotMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    .line 1338
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoShareShot:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1341
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRModeLevel()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 1342
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1345
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    .line 1346
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1349
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getHDRPictureMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    .line 1350
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDRmodePicture:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1358
    .end local v2           #index:I
    :cond_0
    return-void

    .line 1221
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x9 -> :sswitch_5
        0xe -> :sswitch_b
        0x12 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_9
        0x23 -> :sswitch_a
        0x2f -> :sswitch_16
        0x31 -> :sswitch_17
        0x33 -> :sswitch_18
        0x36 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x65 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_5
        0x6d -> :sswitch_e
        0x6e -> :sswitch_15
        0x70 -> :sswitch_f
        0x72 -> :sswitch_10
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x77 -> :sswitch_13
        0x7a -> :sswitch_14
        0x86 -> :sswitch_0
        0x87 -> :sswitch_0
    .end sparse-switch
.end method

.method public setShootAndShare(I)V
    .locals 4
    .parameter "sns"

    .prologue
    .line 2567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_shootandshare_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    .line 2568
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    if-eq v1, p1, :cond_0

    .line 2569
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootAndShare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    .line 2571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2572
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_shootandshare_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootAndShare:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2573
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2574
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2576
    const/16 v1, 0x27

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2578
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 1
    .parameter "shootingMode"

    .prologue
    .line 1913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    .line 1914
    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 3
    .parameter "shootingMode"
    .parameter "exiting"

    .prologue
    .line 1917
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-eq v0, p1, :cond_0

    .line 1918
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousShootingMode:I

    .line 1920
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1922
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1923
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    .line 1927
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1928
    if-nez p2, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 1931
    :cond_0
    return-void

    .line 1925
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setSingleShotBurstHelpTextDialog(I)V
    .locals 4
    .parameter "singleShotBurstHelpTextDialog"

    .prologue
    .line 4915
    const-string v1, "pref_single_shot_burst_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4916
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSingleShotBurstHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4918
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_single_shot_burst_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4919
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4921
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSnapshotLimitationDialog(I)V
    .locals 4
    .parameter "snapshotLimitationDialog"

    .prologue
    .line 4976
    const-string v1, "pref_snap_shot_limitation_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4977
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSnapshotLimitationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4979
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_snap_shot_limitation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4980
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4982
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 6
    .parameter "storage"

    .prologue
    const/16 v5, 0x75

    const/16 v4, 0x16

    .line 3206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 3207
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    .line 3208
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 3210
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3211
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3214
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_2

    .line 3215
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3219
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setDefaultStorageStatus()V

    .line 3220
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 3223
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    if-nez p1, :cond_1

    .line 3224
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3226
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3228
    :cond_1
    return-void

    .line 3217
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setStorageForBurstDialog(I)V
    .locals 4
    .parameter "storageForBurst"

    .prologue
    .line 4898
    const-string v1, "pref_storage_burst_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4899
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorageForBurstDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4901
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_storage_burst_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4902
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4904
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 2049
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 2050
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 2052
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2054
    :cond_0
    return-void
.end method

.method public setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 4
    .parameter "orderString"
    .parameter "map"

    .prologue
    .line 1369
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraSettings;->resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V

    .line 1370
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1372
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1373
    .local v0, commandId:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1375
    .end local v0           #commandId:I
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 2587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2588
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_user_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2591
    const/16 v1, 0x29

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2592
    return-void
.end method

.method public setVideocallPresetSelected(Z)V
    .locals 0
    .parameter "mVideocallPresetSelected"

    .prologue
    .line 4657
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 4658
    return-void
.end method

.method public setVolumeKey(I)V
    .locals 4
    .parameter "volumeKey"

    .prologue
    .line 2478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_volumekey_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    .line 2479
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    if-eq v1, p1, :cond_0

    .line 2480
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCameraVolumeKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    .line 2482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2483
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_volumekey_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKey:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2486
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2487
    const/16 v1, 0x34

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2492
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2489
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x85

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setWhiteBalance(I)V
    .locals 3
    .parameter "whitebalance"

    .prologue
    .line 2265
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    .line 2266
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 2268
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_1

    .line 2269
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2271
    :cond_1
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setWifiP2pEnabled()V
    .locals 5

    .prologue
    .line 5370
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 5371
    .local v1, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v1, :cond_2

    .line 5372
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 5373
    .local v0, mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-nez v0, :cond_0

    .line 5375
    const-string v2, "CameraSettings"

    const-string v3, "Failed to set up connection with wifi p2p service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    const/4 v1, 0x0

    .line 5378
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isP2pEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 5379
    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 5383
    .end local v0           #mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :cond_1
    :goto_0
    return-void

    .line 5381
    :cond_2
    const-string v2, "CameraSettings"

    const-string v3, "mWifiP2pManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 3448
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 3449
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3450
    monitor-exit v1

    .line 3451
    return-void

    .line 3450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRecordingModeWhenSwitchCamera()V
    .locals 2

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackRecordingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1010
    :goto_0
    const/16 v0, 0x65

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1011
    return-void

    .line 1008
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontRecordingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    goto :goto_0
.end method

.method public updateShootingModeWhenSwitchCamera()V
    .locals 2

    .prologue
    .line 993
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousShootingMode:I

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1000
    :goto_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 1002
    return-void

    .line 998
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_0
.end method
