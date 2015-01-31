.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$VoiceRecognizer;,
        Lcom/sec/android/app/camera/Camera$UserWrapper;,
        Lcom/sec/android/app/camera/Camera$OnUserSelected;,
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$TorchSettingObserver;,
        Lcom/sec/android/app/camera/Camera$MainHandler;,
        Lcom/sec/android/app/camera/Camera$GestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field public static final ACTIVE_REQUEST_TIMEOUT:I = 0xce

.field public static final ACTIVE_USER:I = 0xcb

.field private static final AF_WAIT_TIMER_EXPIRED:I = 0x2

.field private static final BURST_SHOT_WAIT_DURATION:I = 0x2bc

.field public static final CANCEL_ACTIVE_USER:I = 0xcc

.field private static final DELAY_TIME_TO_START_AUTO_FOCUS:I = 0x15e

.field private static final DELAY_TIME_WINDOW_FOCUS_ONOFF:I = 0xc8

.field private static final DIRECT_CONNECT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.directconnect"

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = null

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = null

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = null

.field private static final HALF_SHUTTER_DURATION:I = 0x12c

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field private static final KEY_VOICE_INPUT_CONTROL_CAMERA:Ljava/lang/String; = "voice_input_control_camera"

.field private static MAX_SIMULTANEOUS_CAPTURE:I = 0x0

.field private static final MIN_TIME_TO_SET_ZOOM_CMD:I = 0x118

.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final NFC_PACKAGE_NAME:Ljava/lang/String; = "com.android.nfc"

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_BASE:I = 0x0

.field public static final OBJECT_TRACKING_STATUS_FAIL:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_MISSING:I = 0x4

.field public static final OBJECT_TRACKING_STATUS_PROGRESSING:I = 0x1

.field public static final OBJECT_TRACKING_STATUS_SUCCESS:I = 0x2

.field private static final ORIENTATION_DIRTY_DURATION:I = 0x3e8

.field private static final ORIENTATION_TIMER_EXPIRED:I = 0x3

.field public static final REFESH_VIEW_COMMAND:I = 0xcd

.field private static final RUN_DIALOG_TO_CONFIRM:I = 0xc8

.field private static final RUN_DIALOG_TO_NOTICE_COMFIRMED:I = 0xca

.field private static final RUN_TO_SNS_MODE:I = 0xc9

.field private static final SET_DIRTY_COUNT:I = 0x7

.field private static final SET_DIRTY_DURATION:I = 0x64

.field private static final SET_DIRTY_TIMER_EXPIRED:I = 0x4

.field public static final SHRINNG_DEVICE_COUNT_UPDATE:I = 0xcf

.field public static SHUTTER_SOUND_BESTGROUPPOSE:I = 0x0

.field public static SHUTTER_SOUND_BESTPIC:I = 0x0

.field public static SHUTTER_SOUND_BURSTSHOT:I = 0x0

.field public static SHUTTER_SOUND_LOW_PERFORMANCE_BURST:I = 0x0

.field public static SHUTTER_SOUND_SHORT:I = 0x0

.field public static SHUTTER_SOUND_SHORT_BESTSHOT:I = 0x0

.field private static final START_AUTO_FOCUS:I = 0x5

.field private static final START_BURST_SHOT:I = 0x12c

.field public static SnS_RECV_FOLDER:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "Camera"

.field private static final WINDOW_FOCUS_OFF:I = 0x1f5

.field private static final WINDOW_FOCUS_ON:I = 0x1f4

.field private static final WINDOW_TRANSPARENT:I = 0x1f6

.field public static mAutoShareShotState:Z

.field public static mDirectConnectManagerCheck:Z

.field protected static mDvfsHelper:Landroid/os/DVFSHelper;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private battLevel:I

.field private battScale:I

.field private callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

.field private cb_conn:Landroid/content/ServiceConnection;

.field private conn:Landroid/content/ServiceConnection;

.field public devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

.field public iShootShareService:Lcom/samsung/shareshot/IShareShotService;

.field private mActionMoveCount:I

.field private mActiveIp:Ljava/lang/String;

.field public mActivieUserHandler:Landroid/os/Handler;

.field private mAndroidBeamState:Z

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraHardKeyPressed:Z

.field private mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

.field private mCameraSleepByPowerKey:Z

.field private mCameraSound:Landroid/media/MediaActionSound;

.field protected mCameraTemperatureHandler:Landroid/os/Handler;

.field private mCameraTemperatureObserver:Landroid/os/UEventObserver;

.field private mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mChkAllowFocusTouch:Z

.field private mChkLaunchGallery:Z

.field private mCropValue:Ljava/lang/String;

.field public mDeviceList:Lcom/sec/android/glview/TwGLList;

.field public mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

.field private mDirtyCount:I

.field private mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

.field mFakeModeSwitch:Landroid/widget/TextView;

.field mFakeShutter:Landroid/widget/TextView;

.field mFakeThumbnail:Landroid/widget/TextView;

.field private mFinishOnCreate:Z

.field private mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mIfBackToPreMode:Z

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsBurstStopping:Z

.field private mIsDestroying:Z

.field private mIsNZSLBurstStopping:Z

.field private mIsSkipCapturing:Z

.field private mIsTouchFocusStarted:Z

.field private mIsWaitBurstShot:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastCaptureRawData:[B

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field public mName:Ljava/lang/String;

.field public mNameChanged:Z

.field private mNfcState:I

.field public mNotify:Z

.field public mOnUserSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/Camera$OnUserSelected;",
            ">;"
        }
    .end annotation
.end field

.field private mOverValue:I

.field public mPhotoPath:Ljava/lang/String;

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreMode:I

.field private mPreOvervalue:I

.field private mPreviousCallbackValue:I

.field public mReceiveImagePath:Ljava/lang/String;

.field public mReceived:Z

.field public mRespond:Z

.field public mRespondNoti:Z

.field private mReturnUri:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStorageForBurstDialog:Landroid/app/AlertDialog;

.field private mStreamId:[I

.field private mStreamVolume:F

.field private mTaskmanagerRunned:Z

.field private mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

.field private mTouchAutoFocusActive:Z

.field protected mTransitionAnimationScale:F

.field public mUserArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field public mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

.field private mVolumeKeyPressed:Z

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mlasttime:J

.field private mwLostWinFocus:Z

.field private newZoomValue:I

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 226
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->mDvfsHelper:Landroid/os/DVFSHelper;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_DIR:Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot/RECV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->SnS_RECV_FOLDER:Ljava/lang/String;

    .line 330
    sput v3, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    .line 331
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTGROUPPOSE:I

    .line 332
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT_BESTSHOT:I

    .line 333
    const/16 v0, 0xb

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_LOW_PERFORMANCE_BURST:I

    .line 335
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT_BESTSHOT:I

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTPIC:I

    .line 338
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    sput v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BURSTSHOT:I

    .line 342
    sput v3, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    .line 364
    sput-boolean v2, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    .line 365
    sput-boolean v2, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 206
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 207
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 209
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mTransitionAnimationScale:F

    .line 210
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 211
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSleepByPowerKey:Z

    .line 213
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 215
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 216
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 221
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 222
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    .line 229
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 231
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 232
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    .line 233
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 234
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    .line 242
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 243
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 245
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 246
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 248
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 249
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 263
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 284
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z

    .line 288
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 312
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 316
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 317
    sget-object v0, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 319
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 320
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 321
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNotify:Z

    .line 322
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespond:Z

    .line 324
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 325
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    .line 327
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 328
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 346
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 349
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 351
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 354
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    .line 363
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    .line 366
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    .line 367
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    .line 369
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 377
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsWaitBurstShot:Z

    .line 378
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    .line 379
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsBurstStopping:Z

    .line 380
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsNZSLBurstStopping:Z

    .line 382
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    .line 384
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraHardKeyPressed:Z

    .line 386
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    .line 387
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mTaskmanagerRunned:Z

    .line 390
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mlasttime:J

    .line 493
    new-instance v0, Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$GestureListener;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    .line 494
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 648
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 651
    new-instance v0, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    .line 729
    new-instance v0, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 908
    new-instance v0, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2996
    new-instance v0, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 4149
    new-instance v0, Lcom/sec/android/app/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$10;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureHandler:Landroid/os/Handler;

    .line 4163
    new-instance v0, Lcom/sec/android/app/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$11;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    .line 5791
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 6821
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 6822
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 6823
    new-instance v0, Lcom/sec/android/app/camera/Camera$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$19;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    .line 6853
    new-instance v0, Lcom/sec/android/app/camera/Camera$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$20;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    .line 6930
    new-instance v0, Lcom/sec/android/app/camera/Camera$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$21;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 7180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    .line 7432
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 7433
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 7745
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleCameraTemperatureCheck()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$504(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z

    return p1
.end method

.method private checkBatteryStatus()V
    .locals 2

    .prologue
    .line 4143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4144
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4145
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4146
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 5967
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 5968
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5969
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5970
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 5971
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 5975
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5976
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5977
    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7676
    const/4 v1, 0x0

    .line 7678
    .local v1, info:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 7679
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7684
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 7685
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 7688
    :goto_1
    return-object v2

    .line 7680
    :catch_0
    move-exception v0

    .line 7682
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 7688
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4204
    const-string v3, "status"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4205
    .local v1, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 4206
    const-string v3, "level"

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 4207
    const-string v3, "plugged"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4208
    .local v0, battPlugged:I
    const-string v3, "temperature"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4210
    .local v2, battTemp:I
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4213
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    if-ne v3, v7, :cond_8

    .line 4214
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 4215
    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 4216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleBatteryOverheat()V

    .line 4246
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_2

    .line 4248
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_2

    .line 4249
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4250
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 4252
    :cond_1
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 4255
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery(Z)V

    .line 4279
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-le v3, v4, :cond_4

    .line 4280
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4281
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 4283
    :cond_3
    iput-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4285
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v3, :cond_4

    .line 4286
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 4287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 4293
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    .line 4294
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    .line 4295
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-ne v0, v7, :cond_6

    .line 4296
    :cond_5
    iput-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    .line 4298
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_7

    .line 4299
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    iget-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 4302
    :cond_7
    return-void

    .line 4219
    :cond_8
    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 4220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleBatteryOverheat()V

    goto :goto_0
.end method

.method private handleCameraTemperatureCheck()V
    .locals 0

    .prologue
    .line 4201
    return-void
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 6741
    const-string v1, "Camera"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6743
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6783
    :goto_0
    return-void

    .line 6746
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6747
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6748
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 6749
    if-eqz p1, :cond_2

    .line 6750
    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6754
    :goto_1
    const v1, 0x7f09001a

    new-instance v2, Lcom/sec/android/app/camera/Camera$17;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$17;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6760
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6761
    new-instance v1, Lcom/sec/android/app/camera/Camera$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$18;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 6776
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 6777
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 6778
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6779
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 6781
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 6782
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6752
    :cond_2
    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private handleShutterKey()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/16 v9, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5441
    const-string v5, "Camera"

    const-string v6, "handleShutterKey"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-Shot2Shot**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5455
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShutterKeyPressed**Point["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v5, :cond_0

    .line 5460
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 5464
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 5465
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 5469
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 5470
    const-string v4, "Camera"

    const-string v5, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    :cond_1
    :goto_0
    return v3

    .line 5474
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5475
    const-string v3, "Camera"

    const-string v5, "returning because it is capturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 5476
    goto :goto_0

    .line 5479
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v11, :cond_5

    .line 5480
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 5481
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v2, :cond_4

    move v3, v4

    .line 5482
    goto :goto_0

    .line 5483
    :cond_4
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 5484
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5485
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 5486
    goto :goto_0

    .line 5490
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 5507
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 5508
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v1, :cond_6

    .line 5509
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v9, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5510
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5512
    :cond_6
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 5513
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5514
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v3

    if-ge v3, v10, :cond_7

    move v3, v4

    .line 5515
    goto :goto_0

    .line 5516
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 5517
    goto/16 :goto_0

    .line 5522
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_f

    .line 5525
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5526
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    :cond_a
    move v3, v4

    .line 5527
    goto/16 :goto_0

    .line 5529
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_d

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v5

    if-ge v5, v4, :cond_e

    .line 5531
    :cond_d
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    :goto_1
    move v3, v4

    .line 5534
    goto/16 :goto_0

    .line 5533
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_1

    .line 5535
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_10

    .line 5536
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto/16 :goto_0

    .line 5538
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 5539
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v3

    if-nez v3, :cond_11

    .line 5540
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startBurstShotTimer()V

    :cond_11
    move v3, v4

    .line 5542
    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x2a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5549
    const-string v5, "Camera"

    const-string v6, "handleShutterKeyReleased"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5551
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5552
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    :cond_0
    :goto_0
    return v3

    .line 5556
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 5568
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 5569
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v1, :cond_2

    .line 5570
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v7, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5571
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5573
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v5

    if-ge v5, v8, :cond_3

    .line 5574
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - panorama can be saved at least two shot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5580
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 5581
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 5582
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-eqz v2, :cond_0

    .line 5584
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 5585
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5586
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5588
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    goto :goto_0

    .line 5591
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopSmileShot()V

    .line 5592
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 5593
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_0

    .line 5596
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getOriginalViewFinderWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getOriginalViewFinderHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->startDetect(III)V

    .line 5597
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 5598
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_0

    .line 5603
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v3, :cond_9

    .line 5605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShowingBurstShotDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5607
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWaitBurstShot()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5608
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    .line 5609
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShotTimer()V

    move v3, v4

    .line 5610
    goto/16 :goto_0

    .line 5612
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5613
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5614
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 5617
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 5618
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5619
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    .line 5622
    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShotTimer()V

    :cond_9
    move v3, v4

    .line 5625
    goto/16 :goto_0
.end method

.method private initIntentFilter()V
    .locals 10

    .prologue
    .line 1152
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1155
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    const-string v8, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1160
    const-string v8, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1161
    const-string v8, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    const-string v8, "file"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1163
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1166
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1167
    .local v5, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1171
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1172
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1173
    .local v4, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v8, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1174
    const-string v8, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1175
    const-string v8, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1180
    .end local v4           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1181
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1182
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v8, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1183
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1187
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1188
    .local v0, i:Landroid/content/IntentFilter;
    const-string v8, "com.android.shoot.userchanged"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1189
    const-string v8, "com.android.shootshare.recvfile"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1190
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1192
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1193
    .local v7, wifiDirectFilter:Landroid/content/IntentFilter;
    const-string v8, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1194
    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1195
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1198
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1199
    .local v6, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1200
    const-string v8, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1204
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1205
    .local v3, intentFilterSIOP:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1206
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1209
    new-instance v8, Landroid/content/Intent;

    const-string v9, "intent.stop.app-in-app"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1214
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 1218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1219
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1220
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1221
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1223
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1272
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1274
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1275
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1276
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1277
    const-string v1, "return-uri"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 1278
    const-string v1, "skip-savediscard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 1283
    :goto_0
    return-void

    .line 1281
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRemains()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;)V

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 1233
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 1235
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initGPSIndicator()V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initStorageIndicator()V

    .line 1240
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 1242
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1244
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1248
    return-void
.end method

.method private isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 399
    :cond_1
    :goto_0
    return v0

    .line 396
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 399
    goto :goto_0
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 3

    .prologue
    .line 3053
    const/4 v0, 0x0

    .line 3054
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3072
    :cond_0
    :goto_0
    return v0

    .line 3065
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3068
    const/4 v0, 0x1

    goto :goto_0

    .line 3054
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private manageLocalService(Z)V
    .locals 10
    .parameter "start"

    .prologue
    const/4 v9, 0x1

    .line 6880
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " manageLocalService "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6881
    if-nez p1, :cond_5

    .line 6882
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v6, :cond_1

    .line 6928
    :cond_0
    :goto_0
    return-void

    .line 6884
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v6, :cond_0

    .line 6887
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6888
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 6890
    :cond_2
    const-string v6, "Camera"

    const-string v7, " unbind service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6892
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v6, v7}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 6896
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6897
    :cond_3
    const-string v6, "Camera"

    const-string v7, " stop service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6898
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6899
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 6901
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6902
    .local v2, callbackUnbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 6903
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6904
    .local v5, unbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 6905
    .end local v2           #callbackUnbindIntent:Landroid/content/Intent;
    .end local v5           #unbindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 6906
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_4
    const-string v6, "Camera"

    const-string v7, " service null exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 6914
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 6915
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 6893
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 6894
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v6, "Camera"

    const-string v7, " callback null exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 6916
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v4

    .line 6917
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 6907
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 6908
    .restart local v4       #ex:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v6, "Camera"

    const-string v7, " service IllegalArgument exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6911
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6912
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 6919
    :cond_5
    if-ne p1, v9, :cond_0

    .line 6920
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6921
    .local v1, callbackBindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6922
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v6, v9}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6924
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6925
    .local v0, bindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6926
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v6, v9}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1257
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onChkIntentFromWidget()Z
    .locals 4

    .prologue
    .line 1262
    const/4 v0, 0x0

    .line 1264
    .local v0, isFromWidget:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1265
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from-widget"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1267
    :cond_0
    return v0
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2
    .parameter "gsUserInfo"

    .prologue
    .line 7025
    const-string v0, "Camera"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7026
    const-string v0, "Camera"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7028
    new-instance v0, Lcom/sec/android/app/camera/Camera$22;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/Camera$22;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7045
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 7166
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 7167
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7172
    :goto_0
    return-void

    .line 7169
    :catch_0
    move-exception v0

    .line 7170
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 7151
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7162
    :goto_0
    return-void

    .line 7157
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 7158
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7159
    :catch_0
    move-exception v0

    .line 7160
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2980
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2981
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 2983
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2984
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2986
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2987
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 2988
    :cond_0
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/MenuBase;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1140
    :cond_0
    if-nez p1, :cond_2

    .line 1141
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0x4d

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    .line 1142
    .local v0, emptyview:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;
    if-eqz v0, :cond_2

    .line 1143
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/MenuBase;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1145
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 1148
    .end local v0           #emptyview:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;
    :cond_2
    return-void
.end method

.method private startAFWaitTimer()V
    .locals 4

    .prologue
    .line 6664
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6665
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6666
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6667
    return-void
.end method

.method private startBurstShotTimer()V
    .locals 4

    .prologue
    .line 6675
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6676
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6677
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6678
    return-void
.end method

.method private startCameraTemperatureObserving()V
    .locals 2

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/platform/sec-subthermistor"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4174
    const-string v0, "Camera"

    const-string v1, "startCameraTemperatureObserving : startObserving - CAMERA_TEMPERATURE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    return-void
.end method

.method private startingCameraEngine()Z
    .locals 10

    .prologue
    const v9, 0x7f0900f6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1067
    const-string v7, "Camera"

    const-string v8, "##### startingCameraEngine [[[[[[[[[[[[["

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v7, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1070
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->onResume()V

    .line 1072
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1073
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1076
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1077
    .local v3, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1078
    const-string v7, "Camera"

    const-string v8, "onResume CAMERA disable"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {p0, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1080
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1084
    :cond_0
    const-string v1, "Rcs_Camera_Request"

    .line 1085
    .local v1, RCS_CAMERA_VALUE:Ljava/lang/String;
    const-string v0, "Rcs_Camera_Key"

    .line 1086
    .local v0, RCS_CAMERA_KEY:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1088
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1089
    const-string v7, "onresume"

    const-string v8, "RCS camera launch during CS call :"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 1110
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1111
    const-string v7, "Camera"

    const-string v8, "onResume CAMERA disable"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {p0, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1114
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1117
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1118
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1120
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1121
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1122
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_8

    .line 1124
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7, v6, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1125
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v5, :cond_3

    .line 1126
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1132
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 1133
    const-string v5, "Camera"

    const-string v7, "##### startingCameraEngine ]]]]]]]]]]]]]]]]"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1134
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_4
    return v5

    .line 1091
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraDuringCall()V

    .line 1093
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_Call()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_VoIPCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1094
    :cond_6
    iget-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eq v7, v6, :cond_4

    iget-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-eq v7, v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cameraDuringCall()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1099
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v7, :cond_1

    .line 1100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cameraDuringCall()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1101
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/camera/CameraEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_0

    .line 1103
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/camera/CameraEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_0

    .line 1129
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_1
.end method

.method private stopAFWaitTimer()V
    .locals 2

    .prologue
    .line 6671
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6672
    return-void
.end method

.method private stopBurstShotTimer()V
    .locals 2

    .prologue
    .line 6681
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6682
    return-void
.end method

.method private stopCameraTemperatureObserving()V
    .locals 3

    .prologue
    .line 4179
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 4180
    const-string v1, "Camera"

    const-string v2, "stopCameraTemperatureObserving : stopObserving - CAMERA_TEMPERATURE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4184
    :goto_0
    return-void

    .line 4181
    :catch_0
    move-exception v0

    .line 4182
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Camera"

    const-string v2, "stopCameraTemperatureObserving : thread waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 4

    .prologue
    .line 6575
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v1, :cond_0

    .line 6577
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 6582
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 6583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 6585
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6587
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 6588
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6601
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 6575
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6597
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private switchToCamcorder()V
    .locals 1

    .prologue
    .line 3994
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    .line 3995
    return-void
.end method

.method private switchToCamcorder(Z)V
    .locals 4
    .parameter "hasExtra"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3998
    sput-boolean v2, Lcom/sec/android/app/camera/Camera;->mCameraActivitySwitching:Z

    .line 4000
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4001
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 4002
    const-string v1, "from-camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4008
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 4009
    const-string v1, "Camera"

    const-string v2, "switchToCamcorder : setLowLightShot false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setLowLightShot(I)V

    .line 4015
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 4023
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4025
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$9;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4033
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4034
    return-void
.end method


# virtual methods
.method public OnNotifyFirstPreviewFrame()V
    .locals 0

    .prologue
    .line 5282
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2876
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2877
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2878
    return-void
.end method

.method public cancelCapturePanorama()V
    .locals 1

    .prologue
    .line 6277
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 6278
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 6273
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 6274
    return-void
.end method

.method public cancelTouchAutoFocus()V
    .locals 0

    .prologue
    .line 2826
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 3951
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3952
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 3692
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3694
    if-eqz p1, :cond_0

    .line 3695
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3696
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3960
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 3219
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3220
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 3967
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3968
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3709
    if-eqz p1, :cond_0

    .line 3710
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 3711
    :cond_0
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 6342
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 6343
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 6328
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v0

    .line 6329
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 6330
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 6339
    :goto_0
    return-void

    .line 6333
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 6335
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0

    .line 6337
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0
.end method

.method public checkWifiConnection()Z
    .locals 1

    .prologue
    .line 3282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection(Z)Z

    move-result v0

    return v0
.end method

.method public checkWifiConnection(Z)Z
    .locals 3
    .parameter "showDialog"

    .prologue
    .line 3271
    const-string v1, "Camera"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    .line 3273
    .local v0, bool_direct:Z
    if-nez v0, :cond_1

    .line 3274
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    if-nez v1, :cond_0

    .line 3275
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 3276
    :cond_0
    const/4 v0, 0x0

    .line 3278
    .end local v0           #bool_direct:Z
    :cond_1
    return v0
.end method

.method public clearPanoramaRect()V
    .locals 3

    .prologue
    .line 4782
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 4789
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4790
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 4795
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    :goto_0
    return-void

    .line 4792
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->clearPanoramaRect()V

    goto :goto_0
.end method

.method public convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .parameter "input"

    .prologue
    const/high16 v7, 0x44fa

    .line 4346
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 4348
    .local v2, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4349
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 4357
    .local v1, previewWidth:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 4359
    .local v0, previewHeight:I
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 4360
    .local v3, x:I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 4362
    .local v4, y:I
    add-int/lit16 v3, v3, 0x3e8

    .line 4363
    add-int/lit16 v4, v4, 0x3e8

    .line 4365
    mul-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 4366
    mul-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v4, v5

    .line 4368
    sub-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 4378
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 4350
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 4352
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0

    .line 4354
    .end local v1           #previewWidth:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0
.end method

.method public createBurstMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3b

    .line 7944
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7945
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 7946
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 7947
    .restart local v0       #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7949
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 7950
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 7951
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->createDirForBurst()Z

    .line 7952
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 7953
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 7954
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 7955
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 7956
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 7958
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideHelpText()V

    .line 7961
    :cond_1
    return-void
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 6281
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v1, :cond_0

    .line 6296
    :goto_0
    return-void

    .line 6285
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 6287
    .local v0, nRemainCount:I
    if-lez v0, :cond_1

    .line 6288
    add-int/lit8 v0, v0, -0x1

    .line 6290
    :cond_1
    if-gtz v0, :cond_2

    .line 6291
    const/4 v0, 0x0

    .line 6292
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 6293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 6295
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    goto :goto_0
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 6724
    const-string v1, "Camera"

    const-string v2, "finishTimerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 6734
    :cond_0
    :goto_0
    return-void

    .line 6728
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 6729
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-eqz v0, :cond_0

    .line 6732
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6733
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public getActionShotProgressValue()I
    .locals 4

    .prologue
    const/16 v3, 0x2b

    .line 5711
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5712
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5713
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5714
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5716
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActionShotProgressValue - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v1

    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7968
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBurstShotProgress()I
    .locals 3

    .prologue
    .line 7505
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7506
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 7507
    :cond_0
    const/4 v1, 0x0

    .line 7510
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    goto :goto_0
.end method

.method public getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;
    .locals 1

    .prologue
    .line 6786
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5629
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getChkSideMenuItemsShow()Z
    .locals 1

    .prologue
    .line 6659
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    return v0
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 7976
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getCityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 7050
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 7056
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 7964
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 3033
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 6308
    const/4 v0, 0x0

    .line 6309
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 6310
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 6311
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 6312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 6316
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6317
    iput v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 6321
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 6322
    const/4 v0, 0x0

    .line 6324
    :cond_1
    return v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 7062
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 3048
    const/4 v0, 0x0

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 7972
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public handleShootingModeChanged(I)V
    .locals 16
    .parameter "shootingMode"

    .prologue
    .line 3330
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleShootingModeChanged: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    if-eqz p1, :cond_0

    .line 3333
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/16 v14, 0x2f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3335
    :cond_0
    const/16 v13, 0xf

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 3337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-eq v13, v14, :cond_1

    .line 3338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 3340
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 3351
    :cond_2
    :goto_0
    if-nez p1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 3352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3354
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    .line 3376
    :cond_3
    :goto_1
    const/16 v13, 0x11

    move/from16 v0, p1

    if-eq v0, v13, :cond_4

    const/16 v13, 0x18

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 3378
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 3379
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    .line 3384
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3386
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v13

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 3388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3390
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 3394
    packed-switch p1, :pswitch_data_0

    .line 3587
    :goto_2
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3590
    const/16 v13, 0xf

    move/from16 v0, p1

    if-ne v0, v13, :cond_18

    .line 3591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3595
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3598
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 3599
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3600
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3607
    :goto_4
    return-void

    .line 3343
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 3345
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousShootingMode()I

    move-result v13

    const/16 v14, 0xf

    if-ne v13, v14, :cond_8

    .line 3346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 3347
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    goto/16 :goto_0

    .line 3357
    :cond_9
    const/16 v13, 0x12

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    .line 3358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const v14, 0x7f09014c

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(I)V

    .line 3361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    goto/16 :goto_1

    .line 3364
    :cond_a
    const/16 v13, 0x19

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    .line 3365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const v14, 0x7f0900dc

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(I)V

    .line 3368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    goto/16 :goto_1

    .line 3372
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v13, :cond_3

    .line 3373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    goto/16 :goto_1

    .line 3406
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3407
    .local v10, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v10, :cond_c

    .line 3408
    new-instance v10, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v10           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    const/16 v13, 0x2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3409
    .restart local v10       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3411
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 3412
    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3413
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3419
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3430
    .end local v10           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :pswitch_2
    const-string v13, "Debug"

    const-string v14, "SMILE SHOT button clicked"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3432
    .local v12, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v12, :cond_d

    .line 3433
    const-string v13, "Debug"

    const-string v14, "SMILE VIEW create"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    new-instance v12, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .end local v12           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    const/16 v13, 0x2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3435
    .restart local v12       #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3437
    :cond_d
    invoke-virtual {v12}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3438
    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 3439
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3443
    .end local v12           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3444
    .local v4, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v4, :cond_e

    .line 3445
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v4           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    const/16 v13, 0x2b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3446
    .restart local v4       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V

    .line 3449
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 3450
    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3451
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3453
    const-string v13, "640x480"

    invoke-static {v13}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v11

    .line 3454
    .local v11, resolutionId:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 3456
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3463
    .end local v4           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    .end local v11           #resolutionId:I
    :pswitch_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3466
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x35

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .line 3467
    .local v3, ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    if-nez v3, :cond_f

    .line 3468
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .end local v3           #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    const/16 v13, 0x35

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3469
    .restart local v3       #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x35

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v13, :cond_10

    .line 3473
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v13}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setUserCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    :cond_10
    :goto_5
    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3480
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3474
    :catch_0
    move-exception v8

    .line 3476
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 3483
    .end local v3           #ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 3484
    .local v7, cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v7, :cond_11

    .line 3485
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v7           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    const/16 v13, 0x2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3486
    .restart local v7       #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    :cond_11
    invoke-virtual {v7}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3489
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3493
    .end local v7           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3494
    .local v9, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v9, :cond_12

    .line 3495
    new-instance v9, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v9           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v13, 0x2e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3496
    .restart local v9       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x2e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    :cond_12
    invoke-virtual {v9}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3501
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3509
    .end local v9           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3510
    .local v1, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v1, :cond_13

    .line 3511
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 3512
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->resetBestPicButton()V

    .line 3515
    :cond_13
    if-nez v1, :cond_14

    .line 3516
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v1           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v13, 0x3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3517
    .restart local v1       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3522
    :cond_14
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 3523
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3524
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 3525
    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3526
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3531
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3535
    .end local v1           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3536
    .local v6, bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v6, :cond_15

    .line 3537
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v6           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v13, 0x3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3538
    .restart local v6       #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3540
    :cond_15
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 3541
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 3542
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3543
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 3544
    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3545
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3550
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3554
    .end local v6           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 3555
    .local v2, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-nez v2, :cond_16

    .line 3556
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    const/16 v13, 0x41

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3557
    .restart local v2       #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    :cond_16
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3560
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 3568
    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3569
    .local v5, bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v5, :cond_17

    .line 3570
    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v5           #bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v13, 0x3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3571
    .restart local v5       #bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    :cond_17
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestGroupMode(Z)V

    .line 3574
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 3575
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->createDirForBurst()Z

    .line 3576
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3577
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 3578
    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 3579
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3580
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 3593
    .end local v5           #bestGroupView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_3

    .line 3605
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_4

    .line 3394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    .line 3092
    const-string v0, "Camera"

    const-string v1, "handleTouchAutoFocusEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3170
    :cond_0
    return-void
.end method

.method public hideFaceRect()V
    .locals 1

    .prologue
    .line 7486
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7487
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 7488
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusRect()V

    .line 2898
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 1

    .prologue
    .line 7481
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7482
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 7483
    :cond_0
    return-void
.end method

.method public hidePanoramaRect()V
    .locals 3

    .prologue
    .line 4798
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 4799
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4800
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 4804
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    :goto_0
    return-void

    .line 4802
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hidePanoramaRect()V

    goto :goto_0
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 6651
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenu()V

    .line 6652
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 6641
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6642
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenuItems()V

    .line 6643
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5290
    const-string v1, "Camera"

    const-string v2, "Initialize Camera Sound"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 5292
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x7

    invoke-direct {v1, v8, v2, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 5293
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 5294
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 5295
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v7

    .line 5296
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5297
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v8

    .line 5298
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f05000d

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 5312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 5313
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPoolId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5317
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_1

    .line 5318
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 5319
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 5321
    :cond_1
    return-void
.end method

.method public initNfcState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7994
    const-string v0, "com.sec.android.directconnect"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8009
    :goto_0
    return-void

    .line 7997
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getNfcState()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    .line 7998
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isAndroidBeamEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    .line 8000
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNfcState : mNfcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAndroidBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8002
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoShareShotMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    if-ne v0, v3, :cond_1

    .line 8003
    sput-boolean v3, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    .line 8005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    goto :goto_0

    .line 8007
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/Camera;->mAutoShareShotState:Z

    goto :goto_0
.end method

.method public interruptProcessforBestPics()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7922
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 7925
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7926
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_4

    .line 7941
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_3
    :goto_0
    return-void

    .line 7929
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBestPics()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7930
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearLastContentUri()V

    .line 7932
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 7933
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 7934
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_6

    .line 7935
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 7936
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 7937
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    goto :goto_0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 6685
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 2

    .prologue
    .line 3076
    const/4 v0, 0x1

    .line 3077
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3088
    :goto_0
    return v0

    .line 3080
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3081
    const/4 v0, 0x0

    goto :goto_0

    .line 3083
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3077
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isBestPicMode()Z
    .locals 3

    .prologue
    .line 7491
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 7492
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 7493
    :cond_0
    const/4 v1, 0x1

    .line 7496
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v1

    goto :goto_0
.end method

.method public isBurstCapturing()Z
    .locals 3

    .prologue
    .line 5015
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5016
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 5017
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v1

    .line 5019
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBurstStopping()Z
    .locals 1

    .prologue
    .line 5023
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsBurstStopping:Z

    return v0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 6346
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 6347
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    const/4 v0, 0x0

    .line 6350
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isContinuousAFEnabled()Z
    .locals 2

    .prologue
    .line 7462
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 7464
    :cond_0
    const/4 v0, 0x0

    .line 7469
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGpsEULAEnabledinCamera()V
    .locals 9

    .prologue
    const v8, 0x1010355

    const/4 v7, 0x1

    .line 3887
    const-string v5, "Camera"

    const-string v6, "ghee - isGpsEULAEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3889
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3891
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3892
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3893
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3895
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f0900e0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3897
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3899
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3900
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3902
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3903
    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3905
    new-instance v5, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3911
    const v5, 0x7f0900aa

    new-instance v6, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3927
    const v5, 0x7f0900e4

    new-instance v6, Lcom/sec/android/app/camera/Camera$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$8;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3933
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3934
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3935
    return-void
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 7776
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isNZSLBurstStopping()Z
    .locals 1

    .prologue
    .line 5027
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsNZSLBurstStopping:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 6354
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 6355
    const-string v0, "Camera"

    const-string v1, "isPreviewStarted - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6356
    const/4 v0, 0x0

    .line 6358
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isShowingBurstShotDialog()Z
    .locals 1

    .prologue
    .line 7869
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7870
    const/4 v0, 0x1

    .line 7872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 6737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isVoiceInputSettingOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7719
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 7723
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isWaitBurstShot()Z
    .locals 1

    .prologue
    .line 5043
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsWaitBurstShot:Z

    return v0
.end method

.method public isWifiDirectConnected()Z
    .locals 4

    .prologue
    .line 7436
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 7437
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 7438
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7439
    const-string v2, "Camera"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7440
    const/4 v2, 0x1

    .line 7442
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 4112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 4115
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4139
    :cond_1
    :goto_0
    return v0

    .line 4119
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 4123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4128
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    .line 4135
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public join()V
    .locals 1

    .prologue
    .line 959
    new-instance v0, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 976
    return-void
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 4037
    const/4 v1, 0x0

    .line 4039
    .local v1, result:Z
    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4041
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4042
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffc71c71c71c71cL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 4043
    const/4 v1, 0x0

    .line 4053
    :goto_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    return v1

    .line 4045
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 4047
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 4048
    const/4 v1, 0x0

    goto :goto_0

    .line 4050
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 5633
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->chkActionShotStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5651
    :cond_0
    :goto_0
    return-void

    .line 5639
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5640
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 5644
    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_3

    .line 5645
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 5646
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    goto :goto_0

    .line 5648
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setAcquisitionProgress(I)V

    .line 5649
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showCaptureLayout()V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 3

    .prologue
    .line 5654
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5655
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5663
    :goto_0
    return-void

    .line 5658
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 5659
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 5660
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCaptureCancelled()V

    .line 5662
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    goto :goto_0
.end method

.method public onActionShotCaptured()V
    .locals 3

    .prologue
    .line 5694
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5666
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5667
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5673
    :goto_0
    return-void

    .line 5670
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 5671
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 5672
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto :goto_0
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5676
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5677
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5681
    :goto_0
    return-void

    .line 5680
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 3

    .prologue
    .line 5684
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5686
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 5691
    :goto_0
    return-void

    .line 5689
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 5690
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCreatingResultStarted()V

    goto :goto_0
.end method

.method public onActionShotRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 5699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 5708
    :cond_0
    :goto_0
    return-void

    .line 5703
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5704
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 5707
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotRectChanged([B)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 6000
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--requestCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6001
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 6005
    .local v18, myExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 6006
    if-eqz v18, :cond_0

    .line 6007
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 6010
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 6190
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 6012
    :pswitch_1
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    if-eqz p3, :cond_9

    .line 6013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-nez v3, :cond_2

    .line 6014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraEngine;->CreateCaptureData(Landroid/content/Intent;)V

    .line 6016
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    const-string v3, "specify-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 6018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6020
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 6021
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_8

    .line 6042
    :goto_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 6043
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 6054
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6055
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto/16 :goto_0

    .line 6026
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6027
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6028
    :cond_5
    const-string v3, "Camera"

    const-string v4, "Something goes wrong!! Restart attach mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6031
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6032
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 6034
    .local v16, filepath:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 6036
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_7

    .line 6040
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 6044
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "bitmap-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    if-nez v3, :cond_8

    .line 6046
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6047
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto/16 :goto_0

    .line 6050
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 6051
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 6056
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-nez p2, :cond_1

    .line 6057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 6060
    :try_start_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 6063
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_6

    .line 6068
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 6070
    :try_start_3
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6071
    .local v17, mSave:Ljava/net/URI;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 6072
    .end local v17           #mSave:Ljava/net/URI;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 6079
    :pswitch_2
    const-string v3, "Camera"

    const-string v4, "on result PHOTO_PICKED_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6080
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b

    .line 6081
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 6084
    :cond_b
    if-eqz p3, :cond_11

    .line 6085
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    .line 6086
    .local v19, photo:Landroid/graphics/Bitmap;
    if-nez v19, :cond_c

    .line 6087
    const-string v3, "photo w,h"

    const-string v4, "photo is null. returning..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6090
    :cond_c
    new-instance v11, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_DIR:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6091
    .local v11, dir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 6092
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 6094
    :cond_d
    new-instance v15, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6095
    .local v15, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 6097
    .local v13, fOut:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .local v14, fOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 6102
    .end local v14           #fOut:Ljava/io/FileOutputStream;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    :goto_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6104
    :try_start_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6109
    if-eqz v13, :cond_e

    .line 6111
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 6117
    :cond_e
    :goto_6
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 6118
    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 6119
    const/16 v3, 0x37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 6120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_f

    .line 6121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 6126
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1

    .line 6127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 6098
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v12

    .line 6100
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 6105
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 6107
    .local v12, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6109
    if-eqz v13, :cond_e

    .line 6111
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 6112
    :catch_3
    move-exception v3

    goto :goto_6

    .line 6109
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_10

    .line 6111
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 6114
    :cond_10
    :goto_8
    throw v3

    .line 6125
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_11
    const/16 v3, 0x3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    goto :goto_7

    .line 6132
    :pswitch_3
    if-eqz p3, :cond_1

    .line 6133
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name_changed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 6134
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v3, :cond_1

    .line 6135
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .line 6141
    :pswitch_4
    const/16 v3, 0x7d6

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 6142
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 6143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-nez v3, :cond_12

    .line 6144
    const/16 v3, 0x36

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 6145
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_1

    .line 6146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 6150
    :pswitch_5
    const-string v3, "Camera"

    const-string v4, "Burst REQUEST_BESTGROUPPOSE_IMAGE "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6151
    if-eqz p3, :cond_1

    .line 6152
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DstFile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 6153
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 6157
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/sec/android/app/camera/Camera$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/Camera$13;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 6112
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v3

    goto/16 :goto_6

    :catch_5
    move-exception v4

    goto/16 :goto_8

    .line 6064
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v3

    goto/16 :goto_4

    .line 6037
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #filepath:Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_3

    .line 6022
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :catch_8
    move-exception v3

    goto/16 :goto_1

    .line 6010
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onAdjustContrastMenuSelect(I)V
    .locals 1
    .parameter "contrastValue"

    .prologue
    .line 3182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAdjustContrast(I)V

    .line 3183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 3184
    return-void
.end method

.method public onAdjustSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturationValue"

    .prologue
    .line 3186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAdjustSaturation(I)V

    .line 3187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 3188
    return-void
.end method

.method public onAntishakeSelect(I)V
    .locals 2
    .parameter "antishake"

    .prologue
    .line 3725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 3726
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3728
    return-void
.end method

.method public onAutoShareShotModeSelectCommand(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3780
    if-nez p1, :cond_0

    .line 3781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setAutoShareShotMode(I)V

    .line 3784
    :goto_0
    return-void

    .line 3783
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public onAutocontrastSelect(I)V
    .locals 2
    .parameter "autocontrast"

    .prologue
    .line 3731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    .line 3732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3733
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3734
    return-void
.end method

.method public onBurstCaptureCancelled()V
    .locals 2

    .prologue
    .line 4811
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 4812
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTGROUPPOSE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 4816
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 4817
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 4818
    :cond_0
    return-void

    .line 4814
    :cond_1
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BURSTSHOT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    goto :goto_0
.end method

.method public onBurstModeChanged(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 5059
    if-eqz p1, :cond_0

    .line 5066
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 5074
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 5075
    return-void

    .line 5072
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto :goto_0
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 5
    .parameter "burstmode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5108
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstModeSelectCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 5111
    if-ne p1, v3, :cond_0

    .line 5112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 5113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    .line 5117
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->onSceneModeMenuSelect(I)V

    .line 5119
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 5121
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 5122
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 5124
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 5125
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 5128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 5130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 5131
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 5137
    :goto_0
    return-void

    .line 5135
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0
.end method

.method public onBurstShotCapturingProgressed(II)V
    .locals 4
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 4822
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotCapturingProgressed, curCapturedNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4824
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 4869
    :cond_0
    :goto_0
    return-void

    .line 4827
    :cond_1
    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 4829
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 4837
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4838
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 4840
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureProgressIncreased()V

    goto :goto_0

    .line 4831
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_3

    const/4 v1, 0x4

    if-lt p1, v1, :cond_3

    .line 4833
    const-string v1, "Camera"

    const-string v2, "Burst SHOOTINGMODE_BESTGROUP  STOP "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    goto :goto_1
.end method

.method public onBurstShotCapturingStopped(I)V
    .locals 3
    .parameter "lastImageNum"

    .prologue
    .line 4872
    const-string v1, "Camera"

    const-string v2, "onBurstShotCapturingStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setBurstStopping(Z)V

    .line 4874
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 4875
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4886
    :cond_0
    :goto_0
    return-void

    .line 4878
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4879
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4882
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 4883
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showPostCaptureLayout()V

    .line 4884
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressMax(I)V

    .line 4885
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onBurstShotCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4927
    const-string v1, "Camera"

    const-string v2, "onBurstShotCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4928
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 4930
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4931
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_1

    .line 4965
    :cond_0
    :goto_0
    return-void

    .line 4934
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 4935
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 4936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 4937
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 4938
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 4939
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 4941
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4942
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showHelpText()V

    .line 4947
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    .line 4949
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 4950
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4954
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 4956
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 4957
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4958
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_5

    .line 4959
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 4962
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 4963
    const-string v1, "reviewon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4945
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    goto :goto_1
.end method

.method public onBurstShotSavingCompleted(I)V
    .locals 4
    .parameter "BestpicNum"

    .prologue
    .line 4890
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotSavingCompleted Bestpic is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4892
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 4900
    :goto_0
    return-void

    .line 4895
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPic(I)V

    goto :goto_0
.end method

.method public onBurstShotStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4968
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4969
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 5012
    :goto_0
    return-void

    .line 4972
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 4973
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 4974
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 4975
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 4977
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4978
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 4979
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4980
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 4981
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBurstCapturing(Z)V

    .line 4982
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setBurstStopping(Z)V

    .line 4983
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 4997
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4998
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceDetection()V

    .line 4999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopContinuousAF()V

    .line 5000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 5001
    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BESTGROUPPOSE:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0

    .line 5008
    :cond_4
    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_BURSTSHOT:I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onBurstShotStringProgressed([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 4903
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4904
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 4905
    const-string v1, "Camera"

    const-string v2, "onBurstShotStringProgressed - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    .line 4924
    :cond_0
    :goto_0
    return-void

    .line 4909
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->storeBurstStrings([B)V

    .line 4910
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 4911
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 4912
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotStringProgressed getPostCaptureProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getPostCaptureProgressMax="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    .line 4920
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showBestGroupHighlight()V

    .line 4922
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto :goto_0
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 3737
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 3738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3739
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x2d

    .line 6193
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCartoonShotProgressRendering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6196
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Menu resource is null or camera destroying. Aborting cartoon progress update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    :cond_1
    :goto_0
    return-void

    .line 6200
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 6202
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v0, :cond_3

    .line 6203
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 6204
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6207
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showPostCaptureLayout()V

    .line 6208
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setRederingProgress(I)V

    .line 6209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 6210
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 6211
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 6213
    :cond_4
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 6214
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 6215
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6216
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    .line 6217
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 6218
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 6219
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 924
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 929
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 940
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 941
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 3771
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 3772
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 3777
    :goto_0
    return-void

    .line 3774
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 3775
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 2
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 5140
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5141
    return-void
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 2
    .parameter "lastImageNum"

    .prologue
    .line 5143
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    return-void
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 2

    .prologue
    .line 5146
    const-string v0, "Camera"

    const-string v1, "onContinuousShotSavingCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5147
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 3948
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 979
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 981
    const-string v5, "Camera"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-CameraPreviewLoading**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-CameraUILoading(TSP)**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 991
    .local v2, _axtime_st_1:J
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 998
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkIntentFromWidget()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 999
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 1000
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 1001
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    .line 1064
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1011
    .local v4, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 1012
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 1014
    const v5, 0x7f03000c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 1017
    new-instance v5, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 1022
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setIsEnteringOnCreate(Z)V

    .line 1023
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startingCameraEngine()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1024
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    .line 1033
    new-instance v5, Landroid/media/AudioManager;

    invoke-direct {v5, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->initializeGLSurfaceView()V

    .line 1039
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 1040
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 1058
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1059
    .local v0, _axtime_ed_1:J
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate-End**End["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**[]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    move-wide v2, v0

    .line 1062
    new-instance v5, Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/camera/Camera$TorchSettingObserver;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    .line 1063
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "torch_light"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f090121

    .line 7516
    const/4 v7, 0x6

    if-ne p1, v7, :cond_3

    .line 7517
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7518
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090114

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7519
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 7520
    .local v4, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030010

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 7521
    .local v6, userprofile:Landroid/view/View;
    const v7, 0x7f0b0029

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 7522
    .local v5, iv:Landroid/widget/ImageView;
    const v7, 0x7f0b0012

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 7524
    .local v2, et:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    if-ne v7, v8, :cond_1

    .line 7525
    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7531
    :cond_0
    :goto_0
    new-instance v7, Lcom/sec/android/app/camera/Camera$28;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/camera/Camera$28;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7544
    iget-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v7, :cond_2

    .line 7545
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7548
    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 7550
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7551
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090120

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$29;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/camera/Camera$29;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7603
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$30;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$30;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7614
    new-instance v7, Lcom/sec/android/app/camera/Camera$31;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/Camera$31;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 7626
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7627
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 7672
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :goto_2
    return-object v7

    .line 7527
    .restart local v0       #builder1:Landroid/app/AlertDialog$Builder;
    .restart local v2       #et:Landroid/widget/EditText;
    .restart local v4       #factory:Landroid/view/LayoutInflater;
    .restart local v5       #iv:Landroid/widget/ImageView;
    .restart local v6       #userprofile:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7528
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7529
    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 7547
    .end local v3           #f:Ljava/io/File;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7628
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :cond_3
    const/4 v7, 0x7

    if-ne p1, v7, :cond_4

    .line 7629
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7630
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090119

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7631
    const v7, 0x7f060001

    new-instance v8, Lcom/sec/android/app/camera/Camera$32;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$32;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7660
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$33;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$33;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7670
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_2

    .line 7672
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1907
    const-string v0, "Camera"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_0

    .line 1910
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1912
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    if-eqz v0, :cond_1

    .line 1915
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1916
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camera$TorchSettingObserver;

    .line 1919
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1921
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->clearGLSurfaceView()V

    .line 1923
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1925
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1928
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_3

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 1932
    :cond_3
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_4

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 1936
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 1939
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_5

    .line 1940
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->clear()V

    .line 1941
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 1944
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1946
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 1949
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1951
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1954
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1956
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 1959
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1961
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    .line 1964
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 1965
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1966
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1967
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 1968
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 1969
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1970
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1973
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1976
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_b

    .line 1977
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1978
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1980
    :cond_b
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1981
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1982
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 1983
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDirectConnectManager:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    .line 1988
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1989
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 4

    .prologue
    .line 3845
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3846
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 3854
    :cond_0
    :goto_1
    return-void

    .line 3849
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 3851
    :cond_2
    const/16 v1, 0x28

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 3852
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 3853
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 3685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 3686
    if-eqz p1, :cond_0

    .line 3687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 3689
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 3177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 3178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 3179
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 3720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 3722
    return-void
.end method

.method public onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4384
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 4385
    :cond_0
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 3191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 3196
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 3858
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 3859
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 3860
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    .line 3861
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 3863
    :cond_0
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 3610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3611
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 3612
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4423
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 4473
    :cond_0
    :goto_0
    return-void

    .line 4428
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAFTimerStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4431
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_3

    .line 4432
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4433
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4434
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 4441
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4451
    :cond_4
    if-nez p1, :cond_7

    .line 4452
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4453
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 4455
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_6

    .line 4457
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4460
    :cond_6
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4467
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWaitBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4468
    if-eq p1, v5, :cond_8

    if-ne p1, v6, :cond_0

    .line 4469
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    .line 4470
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    goto/16 :goto_0

    .line 4437
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    goto/16 :goto_1
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 6368
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 6370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 6371
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6372
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setGuideLineSize(Landroid/view/View;)V

    .line 6373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->resetFocus(Landroid/view/View;)V

    .line 6377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 6378
    const-string v0, "Camera"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6464
    :goto_0
    return-void

    .line 6382
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$14;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 6462
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6463
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 3
    .parameter "gps"

    .prologue
    .line 3866
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3867
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 3884
    :goto_0
    return-void

    .line 3871
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3872
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEULAenabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEULAenable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3874
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isGpsEULAEnabledinCamera()V

    .line 3883
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 3875
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3876
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->IsGpsEnableInSettings()V

    goto :goto_1

    .line 3878
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 3881
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 3742
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 3743
    return-void
.end method

.method public onHDRIntensityModeSelectCommand(I)V
    .locals 1
    .parameter "mHDRIntensityMode"

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 3205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDRIntensityMode(I)V

    .line 3206
    return-void
.end method

.method public onHDRModeSelect(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDRModeLevel(I)V

    .line 3792
    return-void
.end method

.method public onHDRPictureModeSelectCommand(I)V
    .locals 1
    .parameter "mHDRPictureMode"

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRPictureModeChanged(I)V

    .line 3200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDRPictureMode(I)V

    .line 3201
    return-void
.end method

.method public onHDRShotAllProgressCompleted(Z)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 5756
    const-string v0, "Camera"

    const-string v1, "onHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHDRShotAllProgressCompleted()V

    .line 5758
    return-void
.end method

.method public onHDRShotResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5741
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5742
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 5750
    :goto_0
    return-void

    .line 5746
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 5747
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 5748
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showModeButton()V

    .line 5749
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setRederingProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 5733
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5734
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 5738
    :goto_0
    return-void

    .line 5737
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultStarted()V
    .locals 3

    .prologue
    .line 5721
    const-string v1, "Camera"

    const-string v2, "onHDRShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5724
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 5730
    :goto_0
    return-void

    .line 5727
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    .line 5728
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showPostCaptureLayout()V

    .line 5729
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgressMax(I)V

    goto :goto_0
.end method

.method public onHDRShotYUVFileString(Ljava/lang/String;)V
    .locals 0
    .parameter "filepath"

    .prologue
    .line 5753
    return-void
.end method

.method public onISOMenuSelect(I)V
    .locals 2
    .parameter "iso"

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 3715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3717
    return-void
.end method

.method protected onImageStoringCompleted()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    .line 5150
    const-string v5, "Camera"

    const-string v6, "onImageStoringCompleted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v5, :cond_1

    .line 5263
    :cond_0
    :goto_0
    return-void

    .line 5166
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v5, :cond_0

    .line 5169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 5171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 5182
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 5183
    .local v4, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v4, :cond_2

    .line 5184
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 5187
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v5, :cond_3

    .line 5188
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    .line 5255
    .end local v4           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v5, :cond_e

    .line 5256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    .line 5258
    :cond_4
    const-string v5, "reviewon"

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 5190
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    .line 5191
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 5193
    .local v1, CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    goto :goto_1

    .line 5194
    .end local v1           #CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0xe

    if-ne v5, v6, :cond_7

    .line 5195
    const-string v5, "Camera"

    const-string v6, "onImageStoringCompleted - HDR, hidePostCaptureLayout."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 5197
    .local v3, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 5200
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    goto :goto_1

    .line 5201
    .end local v3           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v7, :cond_8

    .line 5202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 5203
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 5205
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    goto/16 :goto_1

    .line 5207
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_c

    .line 5211
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5212
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 5213
    const-string v5, "Camera"

    const-string v6, "SHOOTINGMODE_BURST_onImageStoringCompleted - CE_STATE_SHUTDOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto/16 :goto_0

    .line 5217
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CaptureData;->getCaptureSmallBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CaptureData;->getOrientation()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    .line 5219
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 5220
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 5221
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImageStoringCompleted getPostCaptureProgress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getPostCaptureProgressMax="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5224
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5229
    :cond_b
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showHighlight()V

    .line 5230
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    goto/16 :goto_1

    .line 5232
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_3

    .line 5233
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x41

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 5234
    .local v2, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 5237
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->reset()V

    .line 5238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 5246
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v5, :cond_d

    .line 5247
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 5249
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    goto/16 :goto_1

    .line 5261
    .end local v2           #LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5226
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v10, 0x12

    const/16 v9, 0x1b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1993
    const-string v5, "Camera"

    const-string v8, "onKeyDown()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    move v2, p1

    .line 2021
    .local v2, fakeKeyCode:I
    const/4 v4, 0x1

    .line 2023
    .local v4, shutterKey:Z
    iget-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    if-nez v5, :cond_0

    move v5, v6

    .line 2409
    :goto_0
    return v5

    .line 2071
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v5, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2072
    if-ne v2, v9, :cond_2

    .line 2073
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_2

    .line 2074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 2075
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2076
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v5, v6

    .line 2081
    goto :goto_0

    .line 2083
    :catch_0
    move-exception v5

    .line 2087
    :cond_3
    if-ne v2, v9, :cond_4

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    if-eqz v5, :cond_4

    move v5, v6

    .line 2088
    goto :goto_0

    .line 2090
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    .line 2091
    goto :goto_0

    .line 2094
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isResetDialogActive()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    .line 2095
    goto :goto_0

    .line 2098
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isUsbMassStorageEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    .line 2099
    goto :goto_0

    .line 2102
    :cond_7
    const-string v5, "Camera"

    const-string v8, "handling onKeyDown event from Activity class"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    sparse-switch v2, :sswitch_data_0

    .line 2406
    :cond_8
    :goto_1
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-eqz v5, :cond_27

    move v5, v6

    .line 2407
    goto :goto_0

    :sswitch_0
    move v5, v7

    .line 2106
    goto :goto_0

    :sswitch_1
    move v5, v6

    .line 2108
    goto :goto_0

    :sswitch_2
    move v5, v6

    .line 2122
    goto :goto_0

    :sswitch_3
    move v5, v7

    .line 2126
    goto :goto_0

    .line 2128
    :sswitch_4
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_9

    move v5, v6

    .line 2129
    goto :goto_0

    .line 2131
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    .line 2132
    goto/16 :goto_0

    .line 2171
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2183
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->setShutterAutoFocus(Z)V

    .line 2184
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2186
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_c

    .line 2188
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 2191
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_1

    .line 2198
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v6

    .line 2199
    goto/16 :goto_0

    .line 2202
    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v5

    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2203
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-eqz v5, :cond_e

    .line 2204
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    :cond_e
    move v5, v6

    .line 2205
    goto/16 :goto_0

    .line 2208
    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2209
    const-string v5, "Camera"

    const-string v7, "shutter is pressed. Preview is not ready..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2210
    goto/16 :goto_0

    .line 2213
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isFinishOneShotPreviewCallback()Z

    move-result v5

    if-nez v5, :cond_11

    .line 2214
    const-string v5, "Camera"

    const-string v7, "shutter is pressed. One shot preview callback is not finished..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2215
    goto/16 :goto_0

    .line 2223
    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2224
    const-string v5, "Camera"

    const-string v7, "shutter is pressed. Camera is capturing..."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2225
    goto/16 :goto_0

    .line 2228
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2229
    const-string v5, "Camera"

    const-string v7, "returning because it is launch gallery"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2230
    goto/16 :goto_0

    .line 2232
    :cond_13
    iget v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v5, :cond_14

    .line 2233
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    move v5, v6

    .line 2234
    goto/16 :goto_0

    .line 2237
    :cond_14
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_15

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-nez v5, :cond_15

    .line 2238
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraHardKeyPressed:Z

    move v5, v6

    .line 2239
    goto/16 :goto_0

    .line 2249
    :cond_15
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2259
    :goto_2
    if-nez v4, :cond_16

    if-eqz p2, :cond_17

    :cond_16
    if-nez v4, :cond_1a

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-ne v5, v6, :cond_1a

    .line 2272
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2275
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2277
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_19

    .line 2279
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 2281
    :cond_19
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v5, v6

    .line 2282
    goto/16 :goto_0

    .line 2250
    :catch_1
    move-exception v1

    .line 2251
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2285
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1a
    if-nez v4, :cond_1f

    if-eqz p2, :cond_1f

    if-nez v4, :cond_1f

    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z

    if-nez v5, :cond_1f

    .line 2287
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_1b

    .line 2288
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 2291
    :cond_1b
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2293
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1c

    move v5, v6

    .line 2294
    goto/16 :goto_0

    .line 2312
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2316
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-nez v5, :cond_1d

    .line 2318
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 2321
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v5

    if-eq v5, v6, :cond_1e

    .line 2323
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 2336
    :cond_1e
    if-ne v9, v2, :cond_20

    .line 2352
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 2353
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :cond_1f
    move v5, v6

    .line 2356
    goto/16 :goto_0

    .line 2337
    :cond_20
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v5, v6

    .line 2338
    goto/16 :goto_0

    .line 2364
    :sswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v5, :cond_21

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v5

    if-nez v5, :cond_21

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_21
    move v5, v6

    .line 2365
    goto/16 :goto_0

    .line 2370
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2371
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 2372
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2373
    :cond_23
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v8, 0x2

    invoke-static {v10, p0, v5, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2375
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_24

    .line 2376
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 2378
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 2379
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 2381
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v5, :cond_25

    .line 2383
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2384
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_25
    move v5, v6

    .line 2387
    goto/16 :goto_0

    .line 2389
    :sswitch_7
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_26
    move v5, v6

    .line 2401
    goto/16 :goto_0

    .line 2409
    :cond_27
    invoke-super {p0, v2, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 2104
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_1
        0x17 -> :sswitch_5
        0x18 -> :sswitch_6
        0x19 -> :sswitch_6
        0x1a -> :sswitch_2
        0x1b -> :sswitch_5
        0x42 -> :sswitch_5
        0x45 -> :sswitch_6
        0x46 -> :sswitch_6
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
        0x55 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x9c -> :sswitch_6
        0x9d -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 2415
    const-string v4, "Camera"

    const-string v6, "onKeyUp()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    move v1, p1

    .line 2418
    .local v1, fakeKeyCode:I
    const/4 v3, 0x0

    .line 2419
    .local v3, volumeKey:Z
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    .line 2420
    .local v2, isSkipCapturing:Z
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mIsSkipCapturing:Z

    .line 2442
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2672
    :goto_0
    return v4

    .line 2454
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2455
    const-string v4, "Camera"

    const-string v6, "Delivering onKeyUp to other view"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 2456
    goto :goto_0

    .line 2458
    :catch_0
    move-exception v4

    .line 2462
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2463
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 2464
    const-string v4, "Camera"

    const-string v6, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissResetDialog()V

    :cond_2
    move v4, v5

    .line 2467
    goto :goto_0

    .line 2470
    :cond_3
    const-string v4, "Camera"

    const-string v6, "handling onKeyUp event from Activity class"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    sparse-switch v1, :sswitch_data_0

    .line 2669
    :cond_4
    :goto_1
    if-eqz v3, :cond_26

    move v4, v5

    .line 2670
    goto :goto_0

    .line 2474
    :sswitch_0
    const-string v4, "Camera"

    const-string v6, "BACK KEY PRESSED!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2477
    const-string v4, "Camera"

    const-string v6, "event isCanceled() true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2478
    goto :goto_0

    .line 2480
    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    if-eqz v4, :cond_6

    .line 2481
    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 2482
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    move v4, v5

    .line 2483
    goto :goto_0

    .line 2486
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 2487
    goto :goto_0

    .line 2490
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2491
    :cond_9
    const-string v4, "Camera"

    const-string v6, "if smiledetecting or timercounting, call the cancelautofocus"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2495
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isStartingEngine()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2496
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2499
    const-string v4, "Camera"

    const-string v6, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2500
    goto/16 :goto_0

    .line 2504
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v4, v5

    .line 2505
    goto/16 :goto_0

    .line 2511
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    .line 2512
    goto/16 :goto_0

    .line 2514
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_f

    .line 2515
    const/16 v4, 0x27

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v4, p0, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2516
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_f

    .line 2517
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_f
    move v4, v5

    .line 2519
    goto/16 :goto_0

    .line 2529
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2531
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v4

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2532
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v5

    .line 2533
    goto/16 :goto_0

    .line 2538
    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 2541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    .line 2542
    goto/16 :goto_0

    .line 2545
    :cond_11
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2546
    const-string v4, "Camera"

    const-string v6, "shutter is pressed. Preview is not ready..."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2547
    goto/16 :goto_0

    .line 2550
    :cond_12
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isFinishOneShotPreviewCallback()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2551
    const-string v4, "Camera"

    const-string v6, "shutter is pressed. One shot preview callback is not finished..."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2552
    goto/16 :goto_0

    .line 2560
    :cond_13
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2561
    const-string v4, "Camera"

    const-string v6, "shutter is returned. Camera is Capturing..."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2562
    goto/16 :goto_0

    .line 2565
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v5

    .line 2566
    goto/16 :goto_0

    .line 2569
    :cond_15
    if-eqz v2, :cond_16

    move v4, v5

    .line 2570
    goto/16 :goto_0

    .line 2573
    :cond_16
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v4

    if-ne v4, v5, :cond_17

    .line 2575
    const-string v4, "Camera"

    const-string v6, "camera is autofocusing in smile shot"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2576
    goto/16 :goto_0

    .line 2578
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2579
    const-string v4, "Camera"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2580
    goto/16 :goto_0

    .line 2582
    :cond_18
    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v4, :cond_19

    .line 2583
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    move v4, v5

    .line 2584
    goto/16 :goto_0

    .line 2591
    :cond_19
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v4

    sget v6, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    if-lt v4, v6, :cond_1a

    .line 2592
    const-string v4, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returning because it is over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " picture save wating. Thread count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2594
    goto/16 :goto_0

    .line 2599
    :cond_1a
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraHardKeyPressed:Z

    if-eqz v4, :cond_1b

    .line 2608
    :cond_1b
    if-eqz p2, :cond_1c

    if-eqz v3, :cond_1d

    .line 2609
    :cond_1c
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2610
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    .line 2613
    :cond_1d
    const/16 v4, 0x1b

    if-eq v4, v1, :cond_4

    .line 2614
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2615
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    :sswitch_3
    move v4, v5

    .line 2628
    goto/16 :goto_0

    .line 2630
    :sswitch_4
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1e

    move v4, v5

    .line 2631
    goto/16 :goto_0

    .line 2633
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2634
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_2

    :cond_1f
    move v4, v5

    .line 2637
    goto/16 :goto_0

    .line 2646
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v4, v5

    .line 2648
    goto/16 :goto_0

    .line 2651
    :cond_22
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-nez v4, :cond_23

    .line 2653
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2654
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2655
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    :cond_23
    move v4, v5

    .line 2657
    goto/16 :goto_0

    .line 2659
    :sswitch_5
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mTaskmanagerRunned:Z

    if-nez v4, :cond_24

    .line 2664
    :cond_24
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mTaskmanagerRunned:Z

    if-eqz v4, :cond_25

    .line 2665
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mTaskmanagerRunned:Z

    :cond_25
    move v4, v5

    .line 2666
    goto/16 :goto_0

    .line 2672
    :cond_26
    invoke-super {p0, v1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2472
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x50 -> :sswitch_4
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5765
    .local p2, rectlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLaunchGalleryFromCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    if-nez p1, :cond_0

    .line 5782
    :goto_0
    return-void

    .line 5770
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5771
    const-string v0, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5775
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 5776
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5777
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 5778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 5780
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 5286
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    return-void
.end method

.method public onModechanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3971
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3972
    const-string v0, "Camera"

    const-string v1, "changeMode failed - engine not started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    :goto_0
    return-void

    .line 3976
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3978
    :cond_1
    const-string v0, "Camera"

    const-string v1, "changeMode failed - image capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3982
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 3989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 3990
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    goto :goto_0
.end method

.method public onMultiFrameShotCapturingProgressed(II)V
    .locals 5
    .parameter "progress"
    .parameter "maxImageNum"

    .prologue
    const/16 v4, 0x41

    .line 5078
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiFrameShotCapturingProgressed, progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    if-le p1, p2, :cond_0

    .line 5081
    const-string v1, "Camera"

    const-string v2, "exceed max image number."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    :goto_0
    return-void

    .line 5084
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 5086
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-nez v0, :cond_1

    .line 5087
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 5088
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5091
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showPostCaptureLayout()V

    .line 5092
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setRederingProgress(I)V

    .line 5093
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    goto :goto_0
.end method

.method public onMultiFrameShotReset()V
    .locals 3

    .prologue
    .line 5266
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;

    .line 5267
    .local v0, LowLightShot:Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->getProgressValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 5268
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->reset()V

    .line 5269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 5271
    :cond_0
    return-void
.end method

.method public onMultiFrameShotStarted()V
    .locals 2

    .prologue
    .line 5098
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 5099
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 5100
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 5101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 5102
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 5103
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 5105
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1251
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1254
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 6230
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6231
    packed-switch p1, :pswitch_data_0

    .line 6243
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6246
    :pswitch_0
    return-void

    .line 6231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 3820
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 3821
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 4776
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 4777
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 4778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4779
    :cond_0
    return-void
.end method

.method public onPanoramaCaptureStart()Z
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 4754
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_0

    .line 4755
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptureStart - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    const/4 v1, 0x0

    .line 4771
    :goto_0
    return v1

    .line 4766
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4767
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 4768
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4769
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4771
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v1

    goto :goto_0
.end method

.method public onPanoramaCaptured()V
    .locals 4

    .prologue
    .line 4694
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4696
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    :cond_0
    :goto_0
    return-void

    .line 4699
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4710
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4711
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4713
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureProgressIncreased()V

    .line 4714
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 4807
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedMaxFrames()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 4541
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 4546
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaDirectionChanged - direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4548
    const-string v1, "Camera"

    const-string v2, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :cond_0
    :goto_0
    return-void

    .line 4552
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4563
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4564
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4567
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onPanoramaError(I)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 4574
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - error"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4575
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_1

    .line 4576
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mCameraEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    :cond_0
    :goto_0
    return-void

    .line 4580
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4582
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_2

    .line 4583
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4587
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 4597
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4598
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4600
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 4601
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 4602
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 4605
    const v1, 0x7f09001f

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPanoramaLivePreviewData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4747
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4748
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4749
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->onLivePreviewData([B)V

    .line 4751
    :cond_0
    return-void
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4723
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 4724
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onPanoramaLowResolutionData([B)V

    .line 4730
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4731
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4732
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 4735
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 4637
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4639
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    :cond_0
    :goto_0
    return-void

    .line 4646
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hidePanoramaRect()V

    .line 4647
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    new-instance v2, Lcom/sec/android/app/camera/Camera$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$12;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4672
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4673
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 4675
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 4676
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 4678
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    goto :goto_0

    .line 4680
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 4681
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setPostCaptureProgress(I)V

    .line 4683
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 4684
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 4685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4611
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 4612
    const-string v1, "Camera"

    const-string v2, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    :cond_0
    :goto_0
    return-void

    .line 4616
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4627
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4628
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4631
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1286
    const-string v2, "Camera"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setIsEnteringOnCreate(Z)V

    .line 1292
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mTransitionAnimationScale:F

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3, v5, v9}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1321
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->notifyOnPause()V

    .line 1322
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->PauseGLSurface()V

    .line 1324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getNetWork()I

    move-result v2

    if-nez v2, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_1

    .line 1326
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1333
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v2, :cond_2

    .line 1334
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 1455
    :goto_1
    return-void

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1338
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1339
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1340
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1341
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v3, 0x1f6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1343
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 1345
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1346
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_3

    .line 1349
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 1353
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 1358
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v2, :cond_5

    .line 1359
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 1361
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 1363
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1364
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 1367
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_6

    .line 1368
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 1371
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_7

    .line 1372
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1378
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v2, :cond_8

    .line 1379
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 1380
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 1381
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 1382
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1387
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->interruptProcessforBestPics()V

    .line 1390
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1395
    :goto_3
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 1396
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideAllDlg()V

    .line 1397
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 1399
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v2, :cond_a

    .line 1400
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1401
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    .line 1402
    .local v1, oldState:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1404
    if-eqz v1, :cond_9

    .line 1407
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1408
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1409
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1410
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1422
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1425
    .end local v1           #oldState:I
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v2, :cond_b

    .line 1426
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->onPause()V

    .line 1428
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1429
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBlinkShutterAnimation()V

    .line 1436
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1437
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1438
    :cond_c
    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1450
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setNZSLBurstStopping(Z)V

    .line 1451
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_d

    .line 1452
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1454
    :cond_d
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    goto/16 :goto_1

    .line 1391
    :catch_1
    move-exception v2

    goto :goto_3

    .line 1374
    :catch_2
    move-exception v2

    goto/16 :goto_2
.end method

.method public onPreviewFileReceived(I)V
    .locals 3
    .parameter "preview"

    .prologue
    const/4 v1, 0x1

    .line 3795
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 3804
    :goto_0
    return-void

    .line 3798
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 3799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3800
    :catch_0
    move-exception v0

    .line 3802
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3798
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 3622
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3623
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 3624
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3625
    return-void
.end method

.method public onRespondSharewithNotify()V
    .locals 5

    .prologue
    .line 7245
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 7246
    .local v0, userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 7247
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$27;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/Camera$27;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 7258
    return-void
.end method

.method protected onResume()V
    .locals 21

    .prologue
    .line 1458
    const-string v17, "Camera"

    const-string v18, "onResume"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/16 v17, 0x0

    sput-boolean v17, Lcom/sec/android/app/camera/Camera;->mCameraActivitySwitching:Z

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getCameraIdFromPreferences()I

    move-result v15

    .line 1461
    .local v15, tempCameraId:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1466
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/Camera;->mTransitionAnimationScale:F

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1494
    new-instance v17, Lcom/sec/android/app/camera/Camera$UserWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera$UserWrapper;-><init>(Lcom/sec/android/app/camera/Camera;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 1495
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1515
    .local v7, _axtime_st_1:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1516
    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1817
    :goto_1
    return-void

    .line 1468
    .end local v7           #_axtime_st_1:J
    :catch_0
    move-exception v11

    .line 1469
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1533
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v7       #_axtime_st_1:J
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_Security()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1535
    const v17, 0x7f0900f6

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 1548
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v16

    .line 1561
    .local v16, win:Landroid/view/Window;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1562
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1567
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 1579
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "torch_light"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    const/4 v13, 0x1

    .line 1580
    .local v13, externalTorchEnabled:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsEnteringOnCreate()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->onResume()V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1591
    const-string v17, "enterprise_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1592
    .local v12, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1593
    const-string v17, "Camera"

    const-string v18, "onResume CAMERA disable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const v17, 0x7f0900f6

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1600
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "device_policy"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    .line 1602
    .local v14, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1603
    const-string v17, "Camera"

    const-string v18, "onResume CAMERA disable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const v17, 0x7f0900f6

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1609
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1613
    .end local v12           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsEnteringOnCreate()Z

    move-result v17

    if-nez v17, :cond_8

    .line 1616
    const-string v4, "Rcs_Camera_Request"

    .line 1617
    .local v4, RCS_CAMERA_VALUE:Ljava/lang/String;
    const-string v3, "Rcs_Camera_Key"

    .line 1618
    .local v3, RCS_CAMERA_KEY:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 1620
    .local v9, b:Landroid/os/Bundle;
    if-eqz v9, :cond_18

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1621
    const-string v17, "onresume"

    const-string v18, "RCS camera launch during CS call :"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    .end local v3           #RCS_CAMERA_KEY:Ljava/lang/String;
    .end local v4           #RCS_CAMERA_VALUE:Ljava/lang/String;
    .end local v9           #b:Landroid/os/Bundle;
    :cond_8
    :goto_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mounted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1d

    .line 1662
    const-string v17, "Camera"

    const-string v18, "Camera is finished due to MEDIA_UNMOUNTED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    sget-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v17, :cond_9

    .line 1664
    const-string v17, ""

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    sput-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 1666
    :cond_9
    sget-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v18, 0x7f0900ee

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Toast;->setText(I)V

    .line 1667
    sget-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 1676
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentState()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v10

    .line 1679
    .local v10, ceState:Lcom/sec/android/app/camera/AbstractCeState;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->getCameraDevice()Lcom/sec/android/seccamera/SecCamera;

    move-result-object v17

    if-nez v17, :cond_a

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v17

    if-nez v17, :cond_a

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1708
    .end local v10           #ceState:Lcom/sec/android/app/camera/AbstractCeState;
    :cond_a
    :goto_6
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1709
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1713
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v17

    if-eqz v17, :cond_20

    .line 1714
    const-string v17, "from_app"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1715
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1723
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 1726
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v17

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1727
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1730
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1734
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 1735
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    .line 1738
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getChkSideMenuItemsShow()Z

    move-result v17

    if-nez v17, :cond_10

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 1742
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refresh()V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 1746
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->updateStorage()V

    .line 1750
    :cond_12
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setIsEnteringOnCreate(Z)V

    .line 1752
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v17

    if-nez v17, :cond_13

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 1782
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21

    .line 1783
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1784
    const/16 v17, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1806
    :cond_14
    :goto_8
    new-instance v17, Landroid/content/Intent;

    const-string v18, "intent.stop.app-in-app"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1808
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 1812
    :cond_15
    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1815
    .local v5, _axtime_ed_1:J
    const-string v17, "AXLOG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onResume-End**End["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]**["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v5, v7

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]**[]**"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    move-wide v7, v5

    .line 1817
    goto/16 :goto_1

    .line 1568
    .end local v5           #_axtime_ed_1:J
    .end local v13           #externalTorchEnabled:Z
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkBatteryStatus()V

    goto/16 :goto_2

    .line 1579
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1623
    .restart local v3       #RCS_CAMERA_KEY:Ljava/lang/String;
    .restart local v4       #RCS_CAMERA_VALUE:Ljava/lang/String;
    .restart local v9       #b:Landroid/os/Bundle;
    .restart local v13       #externalTorchEnabled:Z
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraDuringCall()V

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_Call()Z

    move-result v17

    if-nez v17, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_VoIPCall()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1627
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cameraDuringCall()Z

    move-result v17

    if-nez v17, :cond_1b

    .line 1629
    :cond_1a
    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1633
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cameraDuringCall()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_4

    .line 1637
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_4

    .line 1670
    .end local v3           #RCS_CAMERA_KEY:Ljava/lang/String;
    .end local v4           #RCS_CAMERA_VALUE:Ljava/lang/String;
    .end local v9           #b:Landroid/os/Bundle;
    :cond_1d
    sget-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-eqz v17, :cond_1e

    .line 1671
    sget-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->cancel()V

    .line 1673
    :cond_1e
    const/16 v17, 0x0

    sput-object v17, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_5

    .line 1690
    .restart local v10       #ceState:Lcom/sec/android/app/camera/AbstractCeState;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_6

    .line 1718
    .end local v10           #ceState:Lcom/sec/android/app/camera/AbstractCeState;
    :cond_20
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1720
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_7

    .line 1785
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    .line 1788
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/camera/Camera$UserWrapper;->setUserList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1795
    :cond_22
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v17

    if-nez v17, :cond_23

    .line 1796
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    goto/16 :goto_8

    .line 1789
    :catch_1
    move-exception v11

    .line 1791
    .restart local v11       #e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 1798
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->getNetWork()I

    move-result v17

    if-nez v17, :cond_14

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 1800
    const/16 v17, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto/16 :goto_8
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 3746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 3747
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 3
    .parameter "auto"

    .prologue
    const/4 v1, 0x1

    .line 3807
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 3817
    :goto_0
    return-void

    .line 3810
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 3811
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3816
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_0

    .line 3810
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 3812
    :catch_0
    move-exception v0

    .line 3814
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 3955
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 3956
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 2908
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2944
    :goto_0
    return v5

    .line 2912
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 2914
    .local v0, currentCallbackValue:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    if-ge v1, v0, :cond_4

    .line 2915
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2916
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    if-le v1, v2, :cond_1

    .line 2917
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2925
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 2927
    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    .line 2928
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    .line 2930
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    if-gez v1, :cond_2

    .line 2931
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 2934
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_3

    .line 2935
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    .line 2938
    :cond_3
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onZoomValueMenuSelect(I)V

    .line 2940
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->newZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2941
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2942
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2943
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2919
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    if-le v1, v0, :cond_1

    .line 2920
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2921
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    if-ge v1, v2, :cond_1

    .line 2922
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 2948
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2951
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 2952
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mOverValue:I

    .line 2953
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mPreOvervalue:I

    .line 2954
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mPreviousCallbackValue:I

    .line 2956
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 2958
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_0

    .line 2959
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2960
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 2961
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2962
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2965
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2966
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2967
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2970
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2971
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2972
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2973
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2975
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 2976
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2991
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2993
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2994
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 3209
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 3214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 3216
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 5785
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 5786
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 5787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 5789
    :cond_0
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 3223
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3226
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :goto_0
    return-void

    .line 3230
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isNotificationExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3231
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - notifycation is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3235
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 3236
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_2

    .line 3237
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 3239
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 3240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 3242
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3243
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 3245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 3247
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera()V

    .line 3249
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 3250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 3251
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 3963
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 3964
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 2
    .parameter "sns"

    .prologue
    .line 3759
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 3760
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3762
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "-----------on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_0
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 5
    .parameter "shootingMode"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    .line 3290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 3296
    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3297
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 3299
    :cond_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    if-ne p1, v4, :cond_1

    .line 3302
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 3307
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 3308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceType()V

    .line 3311
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 3312
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Switching][Begin] - Shooting mode change start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3325
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 3326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3327
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 1
    .parameter "shuttersound"

    .prologue
    .line 3824
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 3825
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 3826
    return-void
.end method

.method public onSmileDetectingDirectStopped()V
    .locals 3

    .prologue
    .line 4496
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopSmileDetectionSync()V

    .line 4497
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4498
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 4499
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 4500
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 3

    .prologue
    .line 4489
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 4490
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4491
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 4492
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 4493
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 2

    .prologue
    .line 4503
    const-string v0, "Camera"

    const-string v1, "onOnSmileShotDetectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 4505
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 4506
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 4507
    return-void
.end method

.method public onSmileShotFaceRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4512
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 4522
    :cond_0
    :goto_0
    return-void

    .line 4516
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4517
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4521
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotFaceRectChanged([B)V

    goto :goto_0
.end method

.method public onSmileShotSmileRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4527
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 4537
    :cond_0
    :goto_0
    return-void

    .line 4531
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4532
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4536
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotSmileRectChanged([B)V

    goto :goto_0
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 4090
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilterBattery()V

    .line 4105
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 2
    .parameter "storage"

    .prologue
    const/4 v1, 0x1

    .line 3833
    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorageForBurstDialog()I

    move-result v0

    if-nez v0, :cond_0

    .line 3835
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showStorageForBurstDialog()V

    .line 3842
    :goto_0
    return-void

    .line 3837
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 3840
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 4476
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 4478
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 4479
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4480
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4482
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4483
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 4484
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 4485
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 3615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 3619
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2680
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2692
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 2813
    :goto_0
    return v0

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_1

    .line 2698
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2702
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2703
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2704
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 2706
    goto :goto_0

    .line 2708
    :catch_0
    move-exception v0

    .line 2712
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2713
    goto :goto_0

    .line 2716
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    .line 2717
    goto :goto_0

    .line 2720
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2722
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2726
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v1

    .line 2728
    goto :goto_0

    .line 2734
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 2736
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2739
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2813
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 2741
    :pswitch_0
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 2755
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v1

    .line 2756
    goto/16 :goto_0

    .line 2758
    :pswitch_1
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2794
    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    .line 2804
    goto/16 :goto_0

    .line 2806
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2807
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2808
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2809
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    move v0, v1

    .line 2810
    goto/16 :goto_0

    .line 2723
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2739
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .locals 0
    .parameter "user"
    .parameter "isChecked"

    .prologue
    .line 7143
    if-eqz p2, :cond_0

    .line 7144
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 7148
    :goto_0
    return-void

    .line 7146
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_0
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 2
    .parameter "voicecommand"

    .prologue
    .line 3754
    const-string v0, "Camera"

    const-string v1, "onVoiceCommandMenuSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3756
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 1
    .parameter "volumeKey"

    .prologue
    .line 3750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    .line 3751
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 3700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 3701
    if-eqz p1, :cond_0

    .line 3702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 3704
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1845
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-eqz p1, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 1863
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWindowFocusChanged(Z)V

    .line 1864
    return-void

    .line 1853
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_0
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3939
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 3940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValueForced(I)V

    .line 3944
    :goto_0
    return-void

    .line 3942
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 914
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 916
    return-void
.end method

.method protected pauseMwCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1873
    const-string v1, "Camera"

    const-string v2, "WINDOW_FOCUS_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1875
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z

    .line 1877
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1878
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 1880
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 1881
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 1882
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1884
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 1885
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1886
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    .line 1887
    .local v0, oldState:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1889
    if-eqz v0, :cond_1

    .line 1890
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1891
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1892
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1893
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1895
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1897
    .end local v0           #oldState:I
    :cond_2
    return-void
.end method

.method public playCameraSound(II)V
    .locals 9
    .parameter "Sound"
    .parameter "loop"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    .line 5324
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5325
    :cond_0
    const-string v0, "Camera"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    :cond_1
    :goto_0
    return-void

    .line 5329
    :cond_2
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCameraSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    const/16 v7, 0xf

    .line 5332
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 5333
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    .line 5334
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 5335
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 5341
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5342
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5343
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v8, p1

    goto :goto_0

    .line 5336
    :cond_5
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 5337
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=3;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_1

    .line 5346
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v8, p1

    goto/16 :goto_0
.end method

.method public playFaceCount(I)V
    .locals 6
    .parameter "faceCount"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 8027
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8030
    if-gt p1, v3, :cond_1

    .line 8031
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8036
    .local v0, text:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 8041
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 8033
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09017d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 5352
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5355
    :cond_0
    :goto_0
    return-void

    .line 5354
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method

.method public prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 11
    .parameter "matrix"

    .prologue
    const/high16 v10, 0x44fa

    const/high16 v9, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    .line 4306
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v8

    aget-object v0, v7, v8

    .line 4307
    .local v0, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget v7, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 4312
    .local v1, mirror:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 4314
    .local v4, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4315
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 4323
    .local v3, previewWidth:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 4326
    .local v2, previewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 4327
    const/4 v1, 0x0

    .line 4329
    :cond_0
    if-eqz v1, :cond_4

    const/high16 v5, -0x4080

    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4331
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getDisplayOrientation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4334
    int-to-float v5, v3

    div-float/2addr v5, v10

    int-to-float v6, v2

    div-float/2addr v6, v10

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4335
    int-to-float v5, v3

    div-float/2addr v5, v9

    int-to-float v6, v2

    div-float/2addr v6, v9

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4338
    sub-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4339
    return-void

    .line 4307
    .end local v1           #mirror:Z
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    .end local v4           #screenWidth:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4316
    .restart local v1       #mirror:Z
    .restart local v4       #screenWidth:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 4318
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto :goto_1

    .line 4320
    .end local v3           #previewWidth:I
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto/16 :goto_1

    .restart local v2       #previewHeight:I
    :cond_4
    move v5, v6

    .line 4329
    goto :goto_2
.end method

.method protected produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 7692
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 7693
    .local v2, personalInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 7695
    invoke-virtual {v2, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 7697
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7698
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7699
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7700
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 7705
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 7715
    :goto_1
    return-object v2

    .line 7702
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 7707
    :pswitch_0
    const v3, 0x7f0201d2

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 7710
    :pswitch_1
    sget-object v3, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 7705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized refreshDeviceList()V
    .locals 7

    .prologue
    .line 6790
    monitor-enter p0

    :try_start_0
    const-string v3, "Camera"

    const-string v4, "refreshDeviceList"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6791
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    if-eqz v3, :cond_2

    .line 6792
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 6793
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 6794
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 6795
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 6796
    .local v1, menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 6797
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6798
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 6800
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6801
    .local v2, text:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6819
    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 6805
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    .line 6807
    .local v0, deviceDialog:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
    if-eqz v0, :cond_1

    .line 6808
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6809
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 6811
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6812
    .restart local v2       #text:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6790
    .end local v0           #deviceDialog:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
    .end local v2           #text:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6815
    .restart local v0       #deviceDialog:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->refreshDeviceList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 6267
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 6268
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 6270
    :cond_0
    return-void
.end method

.method public resetPosIndicator()V
    .locals 2

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v0, :cond_1

    .line 2893
    :cond_0
    :goto_0
    return-void

    .line 2889
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetPosIndicator()V

    .line 2890
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFaceRect()V

    goto :goto_0
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3007
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3009
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 3012
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 3013
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3014
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 3015
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 3021
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 5374
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 5375
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 5377
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleResetSettings()V

    .line 5379
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 5380
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 5381
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 5383
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 5385
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6249
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_3

    .line 6250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6251
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 6254
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 6255
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 6257
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6258
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 6260
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 6261
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 6262
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 6264
    :cond_3
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 8

    .prologue
    .line 4058
    const-string v4, "Camera"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    const/4 v2, 0x0

    .line 4064
    .local v2, result:Z
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4068
    .local v1, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4071
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 4072
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 4073
    .local v0, height:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeForPreviewAspectRatio - width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    int-to-double v4, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v2

    .line 4084
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4086
    return v2
.end method

.method public restartTouchAF()V
    .locals 0

    .prologue
    .line 2829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->cancelTouchAutoFocus()V

    .line 2830
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartTouchAutoFocus()V

    .line 2831
    return-void
.end method

.method public restartTouchAutoFocus()V
    .locals 0

    .prologue
    .line 2872
    return-void
.end method

.method public restoreNfcState()V
    .locals 3

    .prologue
    .line 8012
    const-string v0, "com.sec.android.directconnect"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.nfc"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8024
    :cond_0
    :goto_0
    return-void

    .line 8016
    :cond_1
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreNfcState : mNfcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAndroidBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8018
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mNfcState:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    .line 8020
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mAndroidBeamState:Z

    if-nez v0, :cond_0

    .line 8021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setAndroidBeamDisabled()V

    goto :goto_0
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 919
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 921
    return-void
.end method

.method protected resumeMwCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 1867
    const-string v0, "Camera"

    const-string v1, "WINDOW_FOCUS_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1869
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1870
    return-void
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 7066
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Notice"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has accepted your request!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$23;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$23;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 7073
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 7076
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Share with request"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wants to share image with you. Continue?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/app/camera/Camera$25;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$25;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$24;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$24;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 7101
    return-void
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 5981
    const/4 v1, 0x0

    .line 5983
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5984
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 5988
    if-eqz v2, :cond_0

    .line 5990
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5996
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 5985
    :catch_0
    move-exception v0

    .line 5986
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 5988
    if-eqz v1, :cond_1

    .line 5990
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 5991
    :catch_1
    move-exception v4

    goto :goto_1

    .line 5988
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 5990
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5993
    :cond_2
    :goto_4
    throw v3

    .line 5991
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 5988
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 5985
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public searchUser(Lcom/samsung/dmc/ux/db/UserInfo;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "gsUserInfo"

    .prologue
    .line 7104
    const/4 v3, 0x0

    .line 7105
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 7107
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 7108
    .local v4, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 7110
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 7111
    if-eqz v2, :cond_0

    .line 7112
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 7121
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v5

    .line 7118
    :catch_0
    move-exception v5

    .line 7121
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "userIP"

    .prologue
    .line 7191
    const/4 v4, 0x0

    .line 7192
    .local v4, user:Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 7195
    .local v3, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 7196
    .local v5, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7197
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 7199
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 7200
    if-eqz v3, :cond_0

    .line 7201
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7203
    monitor-exit v5

    move-object v6, v4

    .line 7213
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v6

    .line 7207
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_1
    monitor-exit v5

    .line 7213
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 7207
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7208
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_0
    move-exception v1

    .line 7210
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public searchUser(Ljava/util/List;II)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter
    .parameter "userID"
    .parameter "selected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;II)",
            "Lcom/samsung/shareshot/User;"
        }
    .end annotation

    .prologue
    .line 7125
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 7126
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 7127
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this user list have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7128
    monitor-enter p1

    .line 7129
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 7131
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 7132
    if-eqz v2, :cond_0

    .line 7133
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 7134
    monitor-exit p1

    move-object v4, v3

    .line 7138
    :goto_0
    return-object v4

    .line 7137
    :cond_1
    monitor-exit p1

    .line 7138
    const/4 v4, 0x0

    goto :goto_0

    .line 7137
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setBurstStopping(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 5031
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsBurstStopping:Z

    .line 5032
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 6362
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 6363
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setConnectingStateGPS(I)V

    .line 6364
    :cond_0
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 5370
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenDefaultLayout()V

    .line 5371
    return-void
.end method

.method public setDvfsBooster(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 8044
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 8045
    new-instance v0, Landroid/os/DVFSHelper;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;IJ)V

    sput-object v0, Lcom/sec/android/app/camera/Camera;->mDvfsHelper:Landroid/os/DVFSHelper;

    .line 8047
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 8048
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 7447
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7448
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 7449
    :cond_0
    return-void
.end method

.method public setHDRShotModeChanged(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 5761
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 5762
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 3029
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 3030
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 5961
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 5962
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 5957
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 5958
    return-void
.end method

.method public setNZSLBurstStopping(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 5035
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsNZSLBurstStopping:Z

    .line 5036
    return-void
.end method

.method public setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V
    .locals 2
    .parameter "l"
    .parameter "position"

    .prologue
    .line 7183
    const-string v0, "Camera"

    const-string v1, "set on user selceted listen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7184
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7185
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7187
    return-void
.end method

.method public setPinupMode(Z)V
    .locals 0
    .parameter "pinupMode"

    .prologue
    .line 7990
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 7991
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setSelectedMenuId(I)V

    .line 3026
    :cond_0
    return-void
.end method

.method public setShutterSoundToDefault()V
    .locals 2

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 3830
    return-void
.end method

.method public setSurfaceTransparent()V
    .locals 4

    .prologue
    const/16 v3, 0x1f6

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1902
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1904
    :cond_0
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 3040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 3042
    return-void
.end method

.method public setWaitBurstShot(Z)V
    .locals 0
    .parameter "waitBurst"

    .prologue
    .line 5039
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsWaitBurstShot:Z

    .line 5040
    return-void
.end method

.method public setWeatherConnect(Z)V
    .locals 1
    .parameter "connect"

    .prologue
    .line 7980
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v0, :cond_0

    .line 7981
    if-eqz p1, :cond_1

    .line 7982
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Connect()V

    .line 7987
    :cond_0
    :goto_0
    return-void

    .line 7984
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Disconnect()V

    goto :goto_0
.end method

.method public showBurstShotsGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7817
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7866
    :cond_0
    :goto_0
    return-void

    .line 7820
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showBurstShotsGuideDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7821
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 7822
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7823
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7825
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7826
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7827
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7829
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7843
    const v5, 0x7f090033

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7844
    const v5, 0x7f09014e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7847
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7848
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7850
    new-instance v5, Lcom/sec/android/app/camera/Camera$36;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$36;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7857
    const v5, 0x7f0900aa

    new-instance v6, Lcom/sec/android/app/camera/Camera$37;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$37;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7863
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 7864
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 6718
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6719
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showEditBackground(Z)V

    .line 6721
    :cond_0
    return-void
.end method

.method public showFaceZoomGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7780
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7814
    :cond_0
    :goto_0
    return-void

    .line 7783
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showFaceZoomGuideDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 7785
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7786
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7788
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7789
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7790
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7792
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f09014d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7794
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7795
    const v5, 0x7f09007d

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7796
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7797
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7799
    new-instance v5, Lcom/sec/android/app/camera/Camera$34;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$34;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7806
    const v5, 0x7f0900aa

    new-instance v6, Lcom/sec/android/app/camera/Camera$35;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$35;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7811
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 7812
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2903
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator(I)V

    .line 2905
    :cond_0
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 7474
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 7475
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceHelpText(I)V

    .line 7476
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 7478
    :cond_0
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 6655
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenu()V

    .line 6656
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 6646
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6647
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenuItems()V

    .line 6648
    :cond_0
    return-void
.end method

.method public showStorageForBurstDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 7876
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7919
    :cond_0
    :goto_0
    return-void

    .line 7879
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showStorageForBurstDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorageForBurstDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7880
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getStorageForBurstDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 7881
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7882
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7884
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7885
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7886
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7888
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090142

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7890
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7891
    const v5, 0x7f0900ca

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7892
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7893
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7895
    new-instance v5, Lcom/sec/android/app/camera/Camera$38;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$38;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7902
    const v5, 0x7f0900aa

    new-instance v6, Lcom/sec/android/app/camera/Camera$39;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$39;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7908
    const v5, 0x7f0900e4

    new-instance v6, Lcom/sec/android/app/camera/Camera$40;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$40;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7916
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    .line 7917
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mStorageForBurstDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showWifiConnectionDialog()V
    .locals 1

    .prologue
    .line 3286
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 3287
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->shrinkFocusRect()V

    .line 2883
    :cond_0
    return-void
.end method

.method public shutterButtonCancelAction()V
    .locals 2

    .prologue
    .line 6689
    const-string v0, "Camera"

    const-string v1, "shutterButtonCancelAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 6691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    .line 6692
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6701
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 6702
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 6703
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 6705
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6706
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_2

    .line 6709
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 6715
    :cond_3
    :goto_0
    return-void

    .line 6710
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 6712
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    goto :goto_0
.end method

.method public declared-synchronized startBlinkShutterAnimation()V
    .locals 7

    .prologue
    .line 6604
    monitor-enter p0

    const v0, 0x7f0b0009

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 6609
    .local v6, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 6611
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 6613
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camera$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$16;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 6628
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6629
    monitor-exit p0

    return-void

    .line 6604
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 7452
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 7453
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 7454
    :cond_0
    return-void
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 6478
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 6569
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 6483
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 6484
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6486
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_0

    .line 6487
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v1, Lcom/sec/android/app/camera/CameraEngine;->lockObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6488
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6489
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 6491
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6566
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 6478
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startSingleBurstShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5048
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopContinuousAF()V

    .line 5049
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->createBurstMenu()V

    .line 5050
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 5051
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 5052
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 5053
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 5054
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 5056
    :cond_1
    return-void
.end method

.method public startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 7727
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    .line 7728
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 7729
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    new-instance v1, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    .line 7731
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_1

    .line 7732
    const-string v0, "Camera"

    const-string v1, "start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7733
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 7735
    :cond_1
    return-void
.end method

.method public declared-synchronized stopBlinkShutterAnimation()V
    .locals 2

    .prologue
    .line 6632
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_1

    .line 6633
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 6635
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 6636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6638
    :cond_1
    monitor-exit p0

    return-void

    .line 6632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopBurstShot()V
    .locals 1

    .prologue
    .line 7500
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 7501
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopBurstShot()V

    .line 7502
    :cond_0
    return-void
.end method

.method public stopCameraSound(I)V
    .locals 2
    .parameter "Sound"

    .prologue
    .line 5358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 5359
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5367
    :goto_0
    return-void

    .line 5362
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    if-nez v0, :cond_1

    .line 5363
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mStreamId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5366
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 7457
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 7458
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 7459
    :cond_0
    return-void
.end method

.method public stopVoiceRecognizer()V
    .locals 2

    .prologue
    .line 7738
    const-string v0, "Camera"

    const-string v1, "stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7739
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_0

    .line 7740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 7742
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 7743
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    .line 3628
    const-string v0, "Camera"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3631
    const-string v0, "Camera"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3634
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3635
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3640
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3643
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3644
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3645
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3646
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 3648
    :cond_1
    return-void
.end method

.method public updateRemainTime()V
    .locals 4

    .prologue
    .line 6299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v0

    .line 6301
    .local v0, nRemainCount:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 6302
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 6304
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRemainStorageIndicator("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 3652
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3653
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    .line 3660
    :cond_0
    :goto_0
    return-void

    .line 3657
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 6467
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6474
    :cond_0
    :goto_0
    return-void

    .line 6471
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 6472
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 6

    .prologue
    const/16 v5, 0x28

    .line 5388
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 5390
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 5391
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v2, :cond_0

    .line 5392
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 5393
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 5395
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 5396
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 5397
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 5405
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 5406
    return-void

    .line 5399
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 5400
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_1

    .line 5401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenResetSettings()V
    .locals 6

    .prologue
    const/16 v5, 0x28

    .line 5409
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 5410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 5411
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 5412
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 5413
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 5414
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 5415
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 5417
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 5418
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_3

    .line 5419
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 5427
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 5428
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v2, :cond_1

    .line 5429
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 5430
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 5433
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_2

    .line 5434
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 5436
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 5437
    return-void

    .line 5421
    .end local v2           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 5422
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_0

    .line 5423
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 3260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3262
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3268
    return-void
.end method

.method public wakeupToSnSMod()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 7218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IntentExtraMessageType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7219
    .local v1, intent_extra_message:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "ActivateConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7220
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 7221
    const-string v2, "Camera"

    const-string v3, " will wake up camera to deal with share with request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onRespondSharewithNotify()V

    .line 7228
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 7229
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/Camera$26;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$26;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7242
    :cond_1
    :goto_1
    return-void

    .line 7223
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isfromhistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7224
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto :goto_0

    .line 7238
    :catch_0
    move-exception v0

    .line 7240
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
