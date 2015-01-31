.class public Lcom/sec/android/app/camera/Camcorder;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camcorder.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camcorder$ThumbKicker;,
        Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;,
        Lcom/sec/android/app/camera/Camcorder$GestureListener;,
        Lcom/sec/android/app/camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static CA_HARDKEY_FULL_UP:I = 0x0

.field private static CA_HARDKEY_HALF_PRESS:I = 0x0

.field private static CA_HARDKEY_NONE:I = 0x0

.field private static final DELAY_TIME_WINDOW_FOCUS_ONOFF:I = 0xc8

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final LAST_VIDEO_URI:Ljava/lang/String; = "last_video_uri"

.field private static final MIN_TIME_TO_SET_ZOOM_CMD:I = 0x118

.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final MSG_RECORDING_MODE_POPUP_FOR_THREAD:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field private static ORIENTATION_DIRTY_DURATION:I = 0x0

.field private static ORIENTATION_TIMER_EXPIRED:I = 0x0

.field private static SET_DIRTY_COUNT:I = 0x0

.field private static SET_DIRTY_DURATION:I = 0x0

.field private static SET_DIRTY_TIMER_EXPIRED:I = 0x0

.field private static STOPAVAILABLE_DURATION:I = 0x0

.field private static STOPAVAILABLE_TIMER_EXPIRED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Camcorder"

.field private static final WINDOW_FOCUS_OFF:I = 0x1f5

.field private static final WINDOW_FOCUS_ON:I = 0x1f4

.field private static final WINDOW_TRANSPARENT:I = 0x1f6

.field protected static mDvfsHelper:Landroid/os/DVFSHelper;

.field private static mNotSupportedZoomToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private battLevel:I

.field private battScale:I

.field private battTemp:I

.field private mActionMoveCount:I

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

.field private mCamcorderSleepByPowerKey:Z

.field private mCamcorderSound:Landroid/media/MediaActionSound;

.field private mCameraHardKeyPressed:Z

.field protected mCameraTemperatureHandler:Landroid/os/Handler;

.field private mCameraTemperatureObserver:Landroid/os/UEventObserver;

.field private mChkLaunchGallery:Z

.field private mDirtyCount:I

.field private mDoRestoreShutterButton:Z

.field private mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

.field private mHardKeyStatus:I

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsCallStateRinging:Z

.field private mIsDestroying:Z

.field private mIsReocrdingStoppedForcely:Z

.field private mIsSlowFastSubMenuCalled:Z

.field private mIsTouchFocusStarted:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

.field private mLastVideoUri:Landroid/net/Uri;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

.field private mOverValue:I

.field private mPassedTimeAfterUpdatingRecordingButtonMs:J

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreOvervalue:I

.field private mPreviousCallbackValue:I

.field private mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

.field protected mRecordingPopupHandler:Landroid/os/Handler;

.field private mRecordingStopAvailable:Z

.field private mRemainTime:I

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSlowMotionRecordingTimeMs:I

.field private mSnapshotLimitationDialog:Landroid/app/AlertDialog;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mTaskmanagerRunned:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

.field private mTimeDrift:J

.field private mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

.field private mTouchAutoFocusActive:Z

.field private mVolumeKeyPressed:Z

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field private mlasttime:J

.field private mwLostWinFocus:Z

.field private newZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 151
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mDvfsHelper:Landroid/os/DVFSHelper;

    .line 173
    sput v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    .line 174
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    .line 176
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    .line 177
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    .line 178
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    .line 184
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    .line 185
    const/16 v0, 0x5dc

    sput v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_DURATION:I

    .line 195
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    .line 196
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    .line 199
    sput v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    .line 395
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 137
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 138
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 145
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 146
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 148
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 154
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 156
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 157
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    .line 158
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 159
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    .line 161
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 165
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 168
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSleepByPowerKey:Z

    .line 179
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 186
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 193
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    .line 201
    sget v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 209
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 211
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 215
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 219
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    .line 222
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mTaskmanagerRunned:Z

    .line 225
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mlasttime:J

    .line 273
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$1;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    .line 349
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$2;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHoverListener:Landroid/view/View$OnHoverListener;

    .line 370
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$GestureListener;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/Camcorder$GestureListener;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

    .line 371
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 373
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 374
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 375
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 377
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 382
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 385
    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 386
    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 387
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 393
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 397
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 398
    iput-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 399
    iput-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 400
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSlowMotionRecordingTimeMs:I

    .line 403
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 405
    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    .line 416
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$3;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 594
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$4;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 611
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$5;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2335
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$6;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 3336
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$10;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureHandler:Landroid/os/Handler;

    .line 3350
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$11;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    .line 4212
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 4214
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->handleCameraTemperatureCheck()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    return p1
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    return p1
.end method

.method private checkCamcorderStartCondition_RequestedSize()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 993
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.sizeLimit"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 994
    .local v1, requestedSizeLimit:J
    const/4 v3, 0x0

    .line 996
    .local v3, videoBitRate:I
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-result-object v0

    .line 997
    .local v0, profile:Lcom/sec/android/app/camera/MediaRecorderProfile;
    if-eqz v0, :cond_0

    .line 998
    iget v3, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 1004
    :cond_0
    cmp-long v6, v1, v9

    if-lez v6, :cond_2

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1006
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1008
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1009
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v1, v6

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 1016
    :cond_2
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCamcorderStartCondition_RequestedSize: cur size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ref size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v3, 0x2

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    cmp-long v6, v1, v9

    if-lez v6, :cond_3

    mul-int/lit8 v6, v3, 0x2

    div-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 1019
    const v6, 0x7f0900ef

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1021
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1025
    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3397
    const-string v2, "status"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3398
    .local v1, battStatus:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 3399
    const-string v2, "level"

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 3400
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3402
    .local v0, battPlugged:I
    const-string v2, "temperature"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 3404
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBatteryChanged : Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3407
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    if-ne v2, v6, :cond_8

    .line 3408
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    .line 3409
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 3410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 3449
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v2, v3, :cond_2

    .line 3451
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_2

    .line 3452
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3453
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3455
    :cond_1
    iput-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3458
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    .line 3485
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-le v2, v3, :cond_4

    .line 3486
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3487
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3489
    :cond_3
    iput-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3491
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v2, :cond_4

    .line 3492
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 3493
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 3498
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    .line 3499
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 3500
    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    if-ne v0, v6, :cond_6

    .line 3501
    :cond_5
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 3503
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v2, :cond_7

    .line 3504
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setBatteryLevel(IZ)V

    .line 3507
    :cond_7
    return-void

    .line 3413
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 3414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheatDuringRecording()V

    goto :goto_0

    .line 3417
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    goto :goto_0
.end method

.method private handleCameraTemperatureCheck()V
    .locals 0

    .prologue
    .line 3393
    return-void
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/16 v4, 0x67

    const/4 v3, 0x0

    .line 4641
    const-string v1, "Camcorder"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4685
    :goto_0
    return-void

    .line 4646
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4647
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4648
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4649
    if-eqz p1, :cond_3

    .line 4650
    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4654
    :goto_1
    const v1, 0x7f09001a

    new-instance v2, Lcom/sec/android/app/camera/Camcorder$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camcorder$15;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4660
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4661
    new-instance v1, Lcom/sec/android/app/camera/Camcorder$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$16;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 4677
    if-eqz p1, :cond_1

    .line 4678
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 4679
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4680
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_2

    .line 4681
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 4683
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4684
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 4652
    :cond_3
    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private initIntentFilter()V
    .locals 8

    .prologue
    .line 769
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 772
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 779
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 782
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 783
    .local v4, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 787
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 788
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 789
    .local v3, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 796
    .end local v3           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 797
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 798
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 803
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 804
    .local v5, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 809
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 810
    .local v0, i:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 814
    new-instance v6, Landroid/content/Intent;

    const-string v7, "intent.stop.app-in-app"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 819
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 823
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 824
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 828
    return-void
.end method

.method private initRemains()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 833
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->initGPSIndicator()V

    .line 837
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 839
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 844
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 847
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initCamcorderSound()V

    .line 849
    return-void
.end method

.method private onChkVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 635
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 637
    return-void
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 4722
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 4723
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4725
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 4726
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4727
    :cond_1
    return-void
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    .line 2363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2367
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 2369
    :cond_0
    return-void
.end method

.method private resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 642
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 753
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-nez v1, :cond_1

    .line 754
    const-string v1, "Camcorder"

    const-string v2, "setImmutableView: mGLCamcorderBaseIndicators is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 758
    if-nez p1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0x4d

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;

    .line 760
    .local v0, emptyview:Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;
    if-eqz v0, :cond_0

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 762
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;->showMenu()V

    goto :goto_0
.end method

.method private showRecordingModePopup()V
    .locals 7

    .prologue
    const/16 v6, 0x45

    const/16 v2, 0x34

    .line 4315
    const-string v0, "Camcorder"

    const-string v1, "showRecordingModePopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4319
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4320
    :cond_1
    const-string v0, "Camcorder"

    const-string v1, "showRecordingModePopup - return due to recording start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    :goto_0
    return-void

    .line 4324
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4325
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 4326
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_3

    .line 4327
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 4328
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 4329
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4340
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->showMenu()V

    goto :goto_0

    .line 4332
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 4333
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_3

    .line 4334
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeSpeedMotionResourceData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/resourcedata/RecordingModeSpeedMotionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 4335
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object v1, p0

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 4336
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private startCameraTemperatureObserving()V
    .locals 2

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/platform/sec-subthermistor"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3361
    const-string v0, "Camcorder"

    const-string v1, "startCameraTemperatureObserving : startObserving - CAMERA_TEMPERATURE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    return-void
.end method

.method private stopCameraTemperatureObserving()V
    .locals 3

    .prologue
    .line 3366
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 3367
    const-string v1, "Camcorder"

    const-string v2, "stopCameraTemperatureObserving : stopObserving - CAMERA_TEMPERATURE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3371
    :goto_0
    return-void

    .line 3368
    :catch_0
    move-exception v0

    .line 3369
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Camcorder"

    const-string v2, "stopCameraTemperatureObserving : thread waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 4490
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized stopPostRecordingSnapAnimation()V
    .locals 2

    .prologue
    .line 4533
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 4534
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4536
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4543
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4539
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private switchToCamera()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2523
    sput-boolean v2, Lcom/sec/android/app/camera/Camcorder;->mCameraActivitySwitching:Z

    .line 2525
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2526
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from-camcorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2531
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2545
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 2547
    const-string v1, "Camcorder"

    const-string v2, "Camcorder finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 2551
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    .line 2552
    return-void
.end method

.method private unregisterCallstateListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4730
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 4731
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4732
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 4733
    return-void
.end method


# virtual methods
.method public IsShutterButtonHidden()Z
    .locals 1

    .prologue
    .line 4173
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    return v0
.end method

.method public ShutterButtonIsRestored()V
    .locals 1

    .prologue
    .line 4177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 4178
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 2194
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2196
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 4103
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 4104
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 4105
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 3021
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2808
    if-eqz p1, :cond_0

    .line 2809
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2810
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 3025
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 4112
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 3029
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2794
    if-eqz p1, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2796
    :cond_0
    return-void
.end method

.method public checkBatteryStatus()V
    .locals 2

    .prologue
    .line 3510
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3511
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3512
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3513
    return-void
.end method

.method protected checkCameraDuringCall()V
    .locals 1

    .prologue
    .line 4809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mEnableDuringCall:Z

    .line 4810
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 2
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 4161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4162
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 4163
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4164
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 4165
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 4166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 4169
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 4170
    return-void
.end method

.method public checkStorageLow()V
    .locals 4

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getAvailableStorage()J

    move-result-wide v0

    .line 4149
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 4150
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 4158
    :goto_0
    return-void

    .line 4153
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 4154
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0

    .line 4156
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public finishRecordingWithError()V
    .locals 2

    .prologue
    .line 3902
    const-string v0, "Camcorder"

    const-string v1, "finishRecordingWithError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3906
    return-void
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 4617
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 4618
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_1

    .line 4623
    :cond_0
    :goto_0
    return-void

    .line 4621
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4622
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4779
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3783
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 4786
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getCityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 4595
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getMaxFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingStopAvailable()Z
    .locals 1

    .prologue
    .line 2858
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 4122
    const/4 v0, 0x0

    .line 4124
    .local v0, nRemainTime:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eq v1, v2, :cond_1

    .line 4125
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkStorageLow()V

    .line 4126
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-nez v1, :cond_1

    .line 4127
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_0

    .line 4128
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getRemainTime()I

    move-result v0

    .line 4130
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 4131
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 4137
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_2

    .line 4138
    const/4 v0, 0x0

    .line 4140
    :cond_2
    return v0

    .line 4132
    :cond_3
    if-gtz v0, :cond_1

    .line 4133
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 4144
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    return v0
.end method

.method public getRequestedDurationLimit()I
    .locals 4

    .prologue
    .line 3542
    const/4 v0, 0x0

    .line 3543
    .local v0, requestedDurationLimit:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3544
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3547
    :cond_0
    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2400
    const/4 v0, 0x0

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 4783
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public gettBattLevel()I
    .locals 2

    .prologue
    .line 3274
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .locals 2

    .prologue
    .line 3257
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3258
    const-string v0, "Camcorder"

    const-string v1, "handleBatteryOverheat : Camera will be terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3261
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 3262
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 3266
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 3269
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 3271
    :cond_1
    return-void

    .line 3264
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleCamcorderRecordingModeChanged(I)V
    .locals 0
    .parameter "recordingmode"

    .prologue
    .line 2637
    return-void
.end method

.method protected handleLowBattery(Z)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 3516
    const-string v0, "Camcorder"

    const-string v1, "handleLowBattery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3518
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 3519
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 3523
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 3526
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery(Z)V

    .line 3527
    return-void

    .line 3521
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleRecordingCommand(I)V
    .locals 2
    .parameter "command"

    .prologue
    .line 3667
    packed-switch p1, :pswitch_data_0

    .line 3692
    const-string v0, "Camcorder"

    const-string v1, "Invalid recording state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    :cond_0
    :goto_0
    return-void

    .line 3669
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    goto :goto_0

    .line 3672
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    goto :goto_0

    .line 3675
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRecordingMenu()V

    .line 3676
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0

    .line 3682
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 3683
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    goto :goto_0

    .line 3686
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleTakePicture()V

    goto :goto_0

    .line 3667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleRecordingSpeedModeChanged(II)V
    .locals 0
    .parameter "mode"
    .parameter "speed"

    .prologue
    .line 2958
    return-void
.end method

.method public handleRecordingTimerElapsed()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3607
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v4, 0xbd3

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3608
    .local v2, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long v0, v3, v5

    .line 3610
    .local v0, currentMs:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3611
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingTime()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 3655
    :cond_0
    :goto_0
    return v7

    .line 3616
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3642
    :cond_2
    const-string v3, "Camcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dritf:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RecordingTm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3647
    :cond_3
    if-eqz v2, :cond_0

    .line 3648
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3649
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    goto :goto_0
.end method

.method public handleShutter()V
    .locals 2

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "Preview is not started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :goto_0
    return-void

    .line 1843
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1845
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback_TimerBgm()V

    .line 1853
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1868
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePrepareVideoRecording()V

    .line 1869
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1870
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartVideoRecording()V

    goto :goto_0

    .line 1855
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1858
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1861
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1853
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    .line 2429
    const-string v0, "Camcorder"

    const-string v1, "handleTouchAutoFocusEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2433
    const-string v0, "Camcorder"

    const-string v1, "Wrong state for touchAF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_0
    return-void
.end method

.method public hideAudioRecordingIndicator()V
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideAudioOffIndicator()V

    .line 2849
    :cond_0
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 2374
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusRect()V

    .line 2379
    :cond_0
    return-void
.end method

.method public hideRecordingLayout()V
    .locals 2

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3554
    :cond_0
    return-void
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 4578
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideShutterButton()V

    .line 4579
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenu()V

    .line 4571
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 4562
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenuItems()V

    .line 4563
    return-void
.end method

.method public hideZoomMenu()V
    .locals 3

    .prologue
    .line 4555
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 4556
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 4559
    :cond_0
    return-void
.end method

.method public initCamcorderSound()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3202
    const-string v1, "Camcorder"

    const-string v2, "Initialize Camcorder Sound"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 3205
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 3206
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 3208
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 3209
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v7

    .line 3210
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 3212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3213
    const-string v1, "Camcorder"

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

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3216
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_1

    .line 3217
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 3218
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 3220
    :cond_1
    return-void
.end method

.method public isAccuWeatherEnable()Z
    .locals 1

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isAccuWeatherEnable()Z

    move-result v0

    return v0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 4599
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isCAFDisabled()Z
    .locals 1

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2424
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 4205
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 4206
    const-string v0, "Camcorder"

    const-string v1, "isCapturing - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    const/4 v0, 0x0

    .line 4209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isGpsEULAEnabledinCamcorder()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3053
    const-string v5, "Camcorder"

    const-string v6, "ghee - isGpsEULAEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3055
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3057
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3058
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3059
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3061
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f0900e0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3063
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3064
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3065
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3067
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3068
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$7;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3074
    const v5, 0x7f0900aa

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$8;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/Camcorder$8;-><init>(Lcom/sec/android/app/camera/Camcorder;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3090
    const v5, 0x7f0900e4

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$9;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3096
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3097
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3098
    return-void
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 4718
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPauseResumeMenuSupported()Z
    .locals 1

    .prologue
    .line 2827
    const/4 v0, 0x1

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 4197
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 4198
    const-string v0, "Camcorder"

    const-string v1, "isPreviewStarted - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    const/4 v0, 0x0

    .line 4201
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecorderStarting()Z
    .locals 2

    .prologue
    .line 4189
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 4190
    const-string v0, "Camcorder"

    const-string v1, "isRecorderStarting - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    const/4 v0, 0x0

    .line 4193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 4182
    const-string v0, "Camcorder"

    const-string v1, "isRecording - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    const/4 v0, 0x0

    .line 4185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecordingMenuTop()Z
    .locals 2

    .prologue
    .line 4631
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4632
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera.glwidget.TwGLCamcorderRecordingMenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4637
    :goto_0
    return v0

    .line 4634
    :catch_0
    move-exception v0

    .line 4637
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 4710
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isShutterPressedByHardKey()Z
    .locals 1

    .prologue
    .line 4714
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    return v0
.end method

.method public isSlowMotionChanged(I)Z
    .locals 3
    .parameter "recordingMode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2832
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2833
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2841
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2836
    goto :goto_0

    .line 2838
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2839
    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isTouchAutoFocusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2405
    const-string v2, "176x144"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2413
    :cond_0
    :goto_0
    return v0

    .line 2409
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 2410
    const-string v1, "Camcorder"

    const-string v2, "!!!!!!!!!!!!!!!!!!check wrong case!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2413
    goto :goto_0
.end method

.method public isZoomAvailable(Z)Z
    .locals 3
    .parameter "popup"

    .prologue
    const/4 v0, 0x0

    .line 3305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 3319
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3332
    :cond_1
    :goto_0
    return v0

    .line 3323
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomNotSupportPopup()Z
    .locals 2

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const-string v1, "640x480"

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3298
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGallery(Ljava/lang/String;)V
    .locals 0
    .parameter "keyValue"

    .prologue
    .line 3911
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 3912
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4030
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onActivityResult--requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onActivityResult--resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    packed-switch p1, :pswitch_data_0

    .line 4100
    :cond_0
    :goto_0
    return-void

    .line 4036
    :pswitch_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    if-eqz p3, :cond_6

    .line 4037
    const/4 v8, 0x0

    .line 4038
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4039
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4041
    :cond_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4042
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4043
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4045
    .local v13, retriever:Landroid/media/MediaMetadataRetriever;
    const-wide/16 v9, 0x0

    .line 4046
    .local v9, dateTaken:J
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v14, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4047
    .local v14, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, p0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4048
    const-string v2, "datetaken"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4049
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_2

    .line 4050
    const-string v2, "date_modified"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v9, v2, v4

    .line 4051
    const-string v2, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4053
    :cond_2
    const-string v2, "mime_type"

    const-string v3, "video/3gpp"

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4054
    const-string v2, "duration"

    const/16 v3, 0x9

    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4057
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4064
    :try_start_1
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4070
    .end local v14           #values:Landroid/content/ContentValues;
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4071
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 4084
    .end local v9           #dateTaken:J
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :goto_2
    if-eqz v8, :cond_0

    .line 4085
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4065
    .restart local v9       #dateTaken:J
    .restart local v13       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 4066
    .local v12, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 4058
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 4059
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "Camcorder"

    const-string v3, "setDataSource failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4064
    :try_start_3
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 4065
    :catch_2
    move-exception v12

    .line 4066
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 4060
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v12

    .line 4061
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4064
    :try_start_5
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 4065
    :catch_4
    move-exception v12

    .line 4066
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 4063
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 4064
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 4067
    :goto_3
    throw v2

    .line 4065
    :catch_5
    move-exception v12

    .line 4066
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 4072
    .end local v9           #dateTaken:J
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 4073
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4074
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4075
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 4076
    :cond_4
    const-string v2, "specify-data"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4077
    const-string v2, "Camcorder"

    const-string v3, "setResult OK !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setResult(I)V

    .line 4079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 4081
    :cond_5
    const-string v2, "Camcorder"

    const-string v3, "Something goes wrong!! Restart attach mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4087
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_6
    if-nez p2, :cond_0

    .line 4088
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4090
    :try_start_7
    const-string v2, "Camcorder"

    const-string v3, "Deleting cancelled attach image"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 4093
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 4034
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method public onAdjustContrastMenuSelect(I)V
    .locals 1
    .parameter "contrastValue"

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAdjustContrast(I)V

    .line 2499
    return-void
.end method

.method public onAdjustSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturationValue"

    .prologue
    .line 2502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAdjustSaturation(I)V

    .line 2503
    return-void
.end method

.method public onAntishakeSelect(I)V
    .locals 1
    .parameter "antishake"

    .prologue
    .line 2735
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 2736
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 1
    .parameter "audioRecording"

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 2985
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 1
    .parameter "autocontrast"

    .prologue
    .line 2706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    .line 2707
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 2819
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2820
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(IZZ)V
    .locals 0
    .parameter "speed"
    .parameter "isSubMenu"
    .parameter "fromResetSettings"

    .prologue
    .line 2917
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 654
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 659
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 670
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 671
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 3007
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 3008
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->showDialog(I)V

    .line 3013
    :goto_0
    return-void

    .line 3010
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 3011
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 2988
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 2989
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 689
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 690
    const-string v2, "Camcorder"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 697
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 700
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setContentView(I)V

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 703
    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 704
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 706
    new-instance v2, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 714
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->setIsEnteringOnCreate(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamcorder()V

    .line 726
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    .line 727
    .local v0, recordingMode:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initializeGLSurfaceView()V

    .line 731
    new-instance v2, Landroid/media/AudioManager;

    invoke-direct {v2, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 733
    const v2, 0x7f09010e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 748
    new-instance v2, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;-><init>(Lcom/sec/android/app/camera/Camcorder;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    .line 749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 750
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1489
    const-string v0, "Camcorder"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1491
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 1494
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    if-eqz v0, :cond_1

    .line 1497
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1498
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mTorchSettingObserver:Lcom/sec/android/app/camera/Camcorder$TorchSettingObserver;

    .line 1501
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1507
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 1509
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 1512
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_4

    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->clear()V

    .line 1514
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 1517
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 1518
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->clear()V

    .line 1519
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 1522
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1524
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 1527
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_7

    .line 1528
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1529
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 1532
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_8

    .line 1533
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearCaptureImageData()V

    .line 1534
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 1537
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1539
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 1542
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 1543
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1544
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1547
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1549
    :cond_a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 1550
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 1551
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1552
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1553
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1555
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1556
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 4

    .prologue
    .line 2710
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 2716
    :cond_0
    const/16 v1, 0xbd1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2717
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_1

    .line 2718
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 2719
    :cond_1
    return-void

    .line 2714
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2800
    if-eqz p1, :cond_0

    .line 2801
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2803
    :cond_0
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 3000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffectRecorderType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3001
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffectRecorderType(I)V

    .line 3002
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3004
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 2494
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 2495
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 2646
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 2723
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 2725
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    .line 2726
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 2728
    :cond_0
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2209
    const-string v0, "Camcorder"

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

    .line 2211
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    .line 2216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setFocusIndicator(I)V

    .line 2219
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2223
    const-string v0, "Camcorder"

    const-string v1, "onFocusStateChanged : disable focus indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2227
    :cond_4
    if-nez p1, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 2232
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_6

    .line 2234
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 2238
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    goto :goto_0
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 4248
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 4250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 4251
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4252
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setGuideLineSize(Landroid/view/View;)V

    .line 4253
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetFocus(Landroid/view/View;)V

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 4258
    const-string v0, "Camcorder"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    :goto_0
    return-void

    .line 4262
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$12;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 4310
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4311
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 3
    .parameter "gps"

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3033
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3050
    :goto_0
    return-void

    .line 3036
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3037
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEULAenabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3039
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isGpsEULAEnabledinCamcorder()V

    .line 3049
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0

    .line 3040
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3041
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->IsGpsEnableInSettings()V

    goto :goto_1

    .line 3043
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 3046
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2963
    return-void
.end method

.method public onInflatedMenuHidden()V
    .locals 0

    .prologue
    .line 4108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x12

    const/4 v5, 0x1

    .line 1560
    const-string v4, "Camcorder"

    const-string v6, "onKeyDown()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    move v2, p1

    .line 1600
    .local v2, fakeKeyCode:I
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 1823
    :goto_0
    return v4

    .line 1657
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 1658
    goto :goto_0

    .line 1660
    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/NoSuchElementException;
    move v4, v5

    .line 1662
    goto :goto_0

    .line 1665
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 1666
    goto :goto_0

    .line 1669
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 1670
    goto :goto_0

    .line 1673
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 1820
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-eqz v4, :cond_10

    move v4, v5

    .line 1821
    goto :goto_0

    .line 1675
    :sswitch_0
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    move v4, v5

    .line 1689
    goto :goto_0

    :sswitch_2
    move v4, v5

    .line 1691
    goto :goto_0

    :sswitch_3
    move v4, v5

    .line 1698
    goto :goto_0

    .line 1708
    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressed()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v5

    .line 1709
    goto :goto_0

    .line 1711
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 1712
    goto :goto_0

    .line 1714
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1715
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1716
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1717
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1718
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x5

    invoke-static {v8, p0, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1720
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_9

    .line 1721
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1735
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_9
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v4, :cond_a

    .line 1737
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1738
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1739
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_a
    move v4, v5

    .line 1742
    goto/16 :goto_0

    .line 1723
    .restart local v3       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x2

    invoke-static {v8, p0, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1725
    .restart local v0       #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_9

    .line 1726
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    .line 1744
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :sswitch_5
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 1745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1746
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 1747
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1748
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    :cond_d
    move v4, v5

    .line 1749
    goto/16 :goto_0

    .line 1753
    :sswitch_6
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_e
    move v4, v5

    .line 1763
    goto/16 :goto_0

    .line 1768
    :sswitch_7
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    if-ne v4, v5, :cond_f

    :cond_f
    move v4, v5

    .line 1815
    goto/16 :goto_0

    .line 1823
    :cond_10
    invoke-super {p0, v2, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1673
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_2
        0x17 -> :sswitch_7
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_1
        0x1b -> :sswitch_7
        0x42 -> :sswitch_7
        0x45 -> :sswitch_4
        0x46 -> :sswitch_4
        0x4f -> :sswitch_3
        0x50 -> :sswitch_5
        0x52 -> :sswitch_0
        0x55 -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x9c -> :sswitch_4
        0x9d -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1884
    const-string v4, "Camcorder"

    const-string v6, "onKeyUp()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    move v2, p1

    .line 1887
    .local v2, fakeKeyCode:I
    const/4 v3, 0x0

    .line 1909
    .local v3, volumeKey:Z
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2063
    :goto_0
    return v4

    .line 1920
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1921
    const-string v4, "Camcorder"

    const-string v6, "Delivering onKeyUp to other view"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1923
    goto :goto_0

    .line 1925
    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/NoSuchElementException;
    move v4, v5

    .line 1927
    goto :goto_0

    .line 1930
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1931
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 1932
    const-string v4, "Camcorder"

    const-string v6, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->dismissResetDialog()V

    :cond_2
    move v4, v5

    .line 1935
    goto :goto_0

    .line 1938
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 2060
    if-eqz v3, :cond_16

    move v4, v5

    .line 2061
    goto :goto_0

    .line 1944
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_4

    .line 1945
    const/16 v4, 0x27

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v4, p0, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1946
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_4

    .line 1947
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    move v4, v5

    .line 1949
    goto :goto_0

    .line 1960
    :sswitch_1
    const-string v4, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera HardKey?="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    .line 1969
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1970
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1971
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1972
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1977
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    .line 1978
    goto/16 :goto_0

    .line 1980
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v4, :cond_8

    .line 1981
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->showDlg(I)V

    move v4, v5

    .line 1982
    goto/16 :goto_0

    .line 1985
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    .line 1986
    goto/16 :goto_0

    .line 1989
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_b

    .line 1991
    :cond_a
    const-string v4, "Camcorder"

    const-string v6, "isPrepareRecording, ignore shutter"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1992
    goto/16 :goto_0

    .line 2004
    :cond_b
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    if-ne v4, v5, :cond_c

    .line 2005
    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraHardKeyPressed:Z

    move v4, v5

    .line 2006
    goto/16 :goto_0

    .line 2008
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleShutter()V

    move v4, v5

    .line 2009
    goto/16 :goto_0

    .line 2011
    :sswitch_2
    const-string v4, "Camcorder"

    const-string v6, "BACK KEY PRESSED!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2014
    const-string v4, "Camcorder"

    const-string v6, "event isCanceled() true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2015
    goto/16 :goto_0

    .line 2017
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingEngine()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingPreview()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingInitialized()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2020
    :cond_e
    const-string v4, "Camcorder"

    const-string v6, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2021
    goto/16 :goto_0

    .line 2024
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2025
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 2026
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2029
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v4, v5

    .line 2030
    goto/16 :goto_0

    :sswitch_3
    move v4, v5

    .line 2033
    goto/16 :goto_0

    .line 2035
    :sswitch_4
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_11

    move v4, v5

    .line 2036
    goto/16 :goto_0

    .line 2038
    :cond_11
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    if-ne v4, v6, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2039
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2040
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_1

    .line 2042
    :cond_12
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    move v4, v5

    .line 2043
    goto/16 :goto_0

    :cond_13
    move v4, v5

    .line 2045
    goto/16 :goto_0

    .line 2047
    :sswitch_5
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mTaskmanagerRunned:Z

    if-nez v4, :cond_14

    .line 2053
    :cond_14
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mTaskmanagerRunned:Z

    if-eqz v4, :cond_15

    .line 2054
    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camcorder;->mTaskmanagerRunned:Z

    :cond_15
    move v4, v5

    .line 2055
    goto/16 :goto_0

    .line 2063
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1938
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;)V
    .locals 10
    .parameter "keyValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3915
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterMediaBrowerFromCamcorder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    if-nez p1, :cond_1

    .line 4007
    :cond_0
    :goto_0
    return-void

    .line 3921
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3922
    const-string v5, "Camcorder"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3928
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 3930
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 3932
    const-string v5, "quickview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "reviewon"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3934
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3935
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3940
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3941
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3942
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3947
    :goto_1
    const-string v5, "from-Camera"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3949
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3968
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto :goto_0

    .line 3944
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 3950
    :catch_0
    move-exception v1

    .line 3951
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "Camcorder"

    const-string v6, "Gallery was disabled!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    goto :goto_0

    .line 3969
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v5, "from_app"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3970
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3971
    .local v3, newExtras:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3973
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3974
    const-string v5, "noFaceDetection"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3975
    const-string v5, "video-thumbnail"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3976
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 3977
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "output"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 3978
    .local v4, saveUri:Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3983
    .end local v4           #saveUri:Landroid/net/Uri;
    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    if-eqz v5, :cond_6

    .line 3984
    const-string v5, "skip-savediscard"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3987
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3988
    const-string v5, "latitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3989
    const-string v5, "longitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3992
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 3993
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3994
    const-string v5, "weather"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWeather()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3997
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3998
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4000
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 4002
    const/16 v5, 0x7d2

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/camera/Camcorder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4005
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 3980
    :cond_9
    const-string v5, "attach-video"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 3198
    const-string v0, "Camcorder"

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

    .line 3199
    return-void
.end method

.method public onModechanged()V
    .locals 2

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2520
    :goto_0
    return-void

    .line 2518
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 2519
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->switchToCamera()V

    goto :goto_0
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2980
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 2981
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 857
    const-string v0, "Camcorder"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setIsEnteringOnCreate(Z)V

    .line 871
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->notifyOnPause()V

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->PauseGLSurface()V

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 905
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->stopKickThumbSuspend()V

    .line 908
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resumeAudioPlayback()V

    .line 911
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->unregisterCallstateListener()V

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 921
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_7

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 927
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->onFocusStateChanged(I)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 944
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 955
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->onPause()V

    .line 962
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_8

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->onPause()V

    .line 966
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideAllDlg()V

    .line 971
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 972
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 989
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 990
    return-void

    .line 941
    :cond_9
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1

    .line 967
    :catch_0
    move-exception v0

    goto :goto_2

    .line 917
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 2556
    return-void
.end method

.method public onRecordingModeMenuSelect(IZ)V
    .locals 4
    .parameter "recordingMode"
    .parameter "fromResetSettings"

    .prologue
    .line 2559
    const/4 v0, 0x0

    .line 2560
    .local v0, isShotSlowMotionNeeded:Z
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    .line 2568
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 2570
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2572
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2573
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 2575
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2576
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2578
    if-nez p2, :cond_1

    .line 2579
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2590
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-eqz v0, :cond_3

    .line 2593
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2596
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2599
    const-string v1, "Camcorder"

    const-string v2, "onRecordingModeChanged out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2653
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2654
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 2655
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2656
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateIfResolutionChanged()V

    .line 2657
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 4023
    if-eqz p1, :cond_0

    .line 4024
    const-string v0, "last_video_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 4026
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4027
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const v14, 0x7f0900f6

    const/4 v12, 0x0

    const/16 v13, 0x68

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1033
    const-string v10, "Camcorder"

    const-string v11, "onResume"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sput-boolean v9, Lcom/sec/android/app/camera/Camcorder;->mCameraActivitySwitching:Z

    .line 1063
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Security()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1065
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1088
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilter()V

    .line 1090
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->onResume()V

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionCheck()V

    .line 1094
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v10

    if-ne v10, v8, :cond_1

    .line 1095
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1100
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1111
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "torch_light"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v1, v8

    .line 1112
    .local v1, externalTorchEnabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraDuringCall()V

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Call()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_VoIPCall()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1118
    :cond_2
    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCheckVoIPCalling:Z

    if-eq v10, v8, :cond_3

    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCheckVtCalling:Z

    if-eq v10, v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->cameraDuringCall()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1120
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1121
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1388
    :goto_2
    return-void

    .line 1101
    .end local v1           #externalTorchEnabled:Z
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    goto :goto_0

    :cond_5
    move v1, v9

    .line 1111
    goto :goto_1

    .line 1125
    .restart local v1       #externalTorchEnabled:Z
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_7

    .line 1126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->cameraDuringCall()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1127
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->setShutterSoundEnable(Z)V

    .line 1133
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1145
    .local v7, win:Landroid/view/Window;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_8

    .line 1146
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 1147
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1165
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1166
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-nez v10, :cond_9

    .line 1167
    const-string v10, ""

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 1169
    :cond_9
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    const v11, 0x7f0900ee

    invoke-virtual {v10, v11}, Landroid/widget/Toast;->setText(I)V

    .line 1170
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1180
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1181
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1182
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1185
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1187
    :cond_a
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1188
    const-string v10, "Camcorder"

    const-string v11, "onResume MICROPHONE disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const v10, 0x1040228

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1191
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1195
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1197
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1198
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1205
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback()V

    .line 1208
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->registerCallStateListener()V

    .line 1210
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1211
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_d

    .line 1212
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1215
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1218
    :cond_e
    iput-object v12, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1221
    .local v3, myExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->setIsVideoCaptureIntent(Z)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1222
    const-string v10, "from_app"

    iput-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1224
    if-eqz v3, :cond_25

    .line 1225
    const-string v10, "skip-savediscard"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 1227
    const-string v10, "mms"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1230
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1231
    .local v4, sizelimit:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 1232
    const-string v10, "Camcorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume onMaxsize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v9, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1238
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1239
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_2

    .line 1129
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #myExtras:Landroid/os/Bundle;
    .end local v4           #sizelimit:J
    .end local v7           #win:Landroid/view/Window;
    :cond_f
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_3

    .line 1173
    .restart local v7       #win:Landroid/view/Window;
    :cond_10
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-eqz v10, :cond_11

    .line 1174
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 1176
    :cond_11
    sput-object v12, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_4

    .line 1242
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v3       #myExtras:Landroid/os/Bundle;
    :cond_12
    const-string v10, "videocall_preset"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 1245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x13

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1246
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1310
    :cond_13
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 1314
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1316
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_14

    .line 1317
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v10, :cond_29

    .line 1318
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1319
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 1320
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1327
    :cond_14
    :goto_6
    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1328
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 1329
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    .line 1331
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/16 v11, 0x82

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1333
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 1334
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 1340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1342
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 1343
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1345
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_17

    .line 1346
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refresh()V

    .line 1347
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 1351
    :cond_17
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setIsEnteringOnCreate(Z)V

    .line 1354
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initRemains()V

    .line 1356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v9

    if-ne v9, v8, :cond_18

    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v8

    const/16 v9, 0x79

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1359
    :cond_18
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->suspendThumbWork()V

    .line 1370
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v8, :cond_19

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSideMenuItems()V

    .line 1372
    :cond_19
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v8, :cond_1a

    .line 1373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 1381
    :cond_1a
    new-instance v8, Landroid/content/Intent;

    const-string v9, "intent.stop.app-in-app"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 1387
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_2

    .line 1250
    :cond_1b
    const-string v10, "video_editor"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-ne v10, v8, :cond_1c

    .line 1257
    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_5

    .line 1253
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_7

    .line 1256
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_7

    .line 1261
    :cond_1e
    const-string v10, "email"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1263
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1264
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_2

    .line 1267
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1268
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v9, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1270
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_5

    .line 1272
    :cond_20
    const-string v10, "video-size"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_23

    .line 1273
    const-string v10, "video-size"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 1274
    .local v6, value:I
    const/16 v10, 0x12

    if-eq v6, v10, :cond_24

    .line 1275
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v10

    if-nez v10, :cond_22

    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1277
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1283
    .end local v6           #value:I
    :cond_23
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1286
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1287
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_2

    .line 1279
    .restart local v6       #value:I
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_8

    .line 1292
    .end local v6           #value:I
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_5

    .line 1297
    :cond_26
    iput-object v12, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1298
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-nez v10, :cond_28

    .line 1300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1304
    :cond_27
    :goto_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    goto/16 :goto_5

    .line 1301
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-ne v10, v8, :cond_27

    .line 1302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/16 v11, 0x65

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_9

    .line 1323
    :cond_29
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto/16 :goto_6
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "cameraReview"

    .prologue
    .line 2966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 2968
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 2992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 2993
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 4014
    if-eqz p1, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4016
    const-string v0, "last_video_uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4019
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4020
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 2247
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2283
    :goto_0
    return v5

    .line 2251
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 2253
    .local v0, currentCallbackValue:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    if-ge v1, v0, :cond_4

    .line 2254
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 2255
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    if-le v1, v2, :cond_1

    .line 2256
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 2264
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 2266
    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    .line 2267
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    .line 2269
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    if-gez v1, :cond_2

    .line 2270
    iput v5, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 2273
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_3

    .line 2274
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 2277
    :cond_3
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 2279
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2280
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 2281
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2282
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2258
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    if-le v1, v0, :cond_1

    .line 2259
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 2260
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    if-ge v1, v2, :cond_1

    .line 2261
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v2, 0x0

    .line 2287
    const-string v4, "Camcorder"

    const-string v5, "onScaleBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2327
    :cond_0
    :goto_0
    return v2

    .line 2296
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2302
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2304
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    .line 2305
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 2306
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    .line 2307
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    .line 2309
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v4, :cond_2

    .line 2310
    new-instance v4, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2311
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 2312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2313
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2316
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2317
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2318
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2322
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2323
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2324
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2326
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    move v2, v3

    .line 2327
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2331
    const-string v0, "Camcorder"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2333
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 2739
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2742
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :goto_0
    return-void

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2747
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 2749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2751
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSwitchCamera()V

    .line 2753
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 2754
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 2756
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2758
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 2996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 2997
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 3188
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilterBattery()V

    .line 3194
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 2976
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2977
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 3530
    const-string v1, "Camcorder"

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

    .line 3531
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 3532
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 3533
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3534
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3537
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 3538
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 3539
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 2650
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2071
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 2072
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 2083
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2084
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 2185
    :goto_0
    return v1

    .line 2090
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2091
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 2092
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v1, v2

    .line 2094
    goto :goto_0

    .line 2096
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v1, v2

    .line 2098
    goto :goto_0

    .line 2101
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 2102
    goto :goto_0

    .line 2105
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, v2

    .line 2106
    goto :goto_0

    .line 2109
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 2110
    goto :goto_0

    .line 2112
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2114
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2118
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move v1, v2

    .line 2120
    goto :goto_0

    .line 2127
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2185
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 2129
    :pswitch_0
    const-string v1, "Camcorder"

    const-string v3, "MotionEvent.ACTION_DOWN"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2140
    goto/16 :goto_0

    .line 2142
    :pswitch_1
    const-string v1, "Camcorder"

    const-string v3, "MotionEvent.ACTION_UP"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    move v1, v2

    .line 2173
    goto/16 :goto_0

    .line 2115
    :catch_1
    move-exception v1

    goto :goto_1

    .line 2127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoRecordingStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3557
    const-string v1, "Camcorder"

    const-string v2, "onVideoRecordingStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3560
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 3561
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3562
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onOrientationChanged(I)V

    .line 3563
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->showMenu()V

    .line 3564
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->startTimer()V

    .line 3565
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3566
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    .line 3570
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v1, :cond_1

    .line 3581
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3588
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3592
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3596
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 3597
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3598
    return-void
.end method

.method public onVideoStoringCompleted(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3787
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_0

    .line 3793
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3794
    iput-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 3797
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_2

    .line 3866
    :cond_1
    :goto_0
    return-void

    .line 3808
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3810
    new-instance v0, Lcom/sec/android/app/camera/RecordingData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/RecordingData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 3811
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x168

    invoke-static {v1, v2, v3, v5}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingData;->setRecordingData(Landroid/graphics/Bitmap;)V

    .line 3813
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-nez v0, :cond_3

    .line 3814
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V

    .line 3817
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_4

    .line 3818
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_4

    .line 3819
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v0, :cond_7

    .line 3820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V

    .line 3829
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3830
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 3831
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3838
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3839
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3841
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3842
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_8

    .line 3843
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 3844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 3845
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto :goto_0

    .line 3822
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 3823
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3824
    iput-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    goto :goto_1

    .line 3847
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->launchGallery(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3850
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_a

    .line 3851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 3852
    const-string v0, "reviewon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3855
    :cond_a
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto/16 :goto_0
.end method

.method public onVideoStoringFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3869
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_1

    .line 3899
    :cond_0
    :goto_0
    return-void

    .line 3885
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3887
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3888
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 3889
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3895
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3896
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_0

    .line 3897
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_0
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 2
    .parameter "voicecommand"

    .prologue
    .line 2971
    const-string v0, "Camcorder"

    const-string v1, "onVoiceCommandMenuSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 2973
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 1
    .parameter "volumeKey"

    .prologue
    .line 3016
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    .line 3017
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 2785
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2786
    if-eqz p1, :cond_0

    .line 2787
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2789
    :cond_0
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    :goto_0
    return-void

    .line 2509
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback_TimerBgm()V
    .locals 4

    .prologue
    .line 644
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 646
    return-void
.end method

.method protected pauseMwCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1432
    const-string v0, "Camcorder"

    const-string v1, "WINDOW_FOCUS_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1436
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1443
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1444
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    .line 1446
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_3

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 1451
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 1453
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->onFocusStateChanged(I)V

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 1464
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 1475
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1479
    :cond_3
    return-void

    .line 1440
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto/16 :goto_0

    .line 1461
    :cond_5
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 1462
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1
.end method

.method public playCameraSound(II)V
    .locals 8
    .parameter "Sound"
    .parameter "loop"

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3224
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    :goto_0
    return-void

    .line 3228
    :cond_1
    const-string v0, "Camcorder"

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

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/16 v7, 0xf

    .line 3232
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 3240
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 3241
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3242
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 3246
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3253
    :cond_0
    :goto_0
    return-void

    .line 3252
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method

.method public reAlignForPreview()V
    .locals 3

    .prologue
    .line 3167
    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3169
    .local v0, previewLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 3171
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3185
    :goto_0
    return-void

    .line 3182
    :cond_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 3780
    :cond_0
    return-void
.end method

.method public resetIndicatorTimerDrift()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3602
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3603
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3604
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 2642
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetPosIndicator()V

    .line 2206
    :cond_0
    return-void
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2342
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2344
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2347
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_1

    .line 2348
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 2349
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2350
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2352
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    .line 2353
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2360
    :cond_2
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 3703
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 3705
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResetSettings()V

    .line 3707
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 3708
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 3710
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 3711
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3755
    const-string v0, "Camcorder"

    const-string v1, "resetTouchFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 3762
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3774
    :goto_0
    return-void

    .line 3765
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 3766
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 3768
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3769
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 3771
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 3772
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 3773
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    goto :goto_0
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 7

    .prologue
    .line 3101
    const-string v4, "Camcorder"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v1, 0x0

    .line 3107
    .local v1, result:Z
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 3111
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3150
    const/16 v3, 0x280

    .line 3151
    .local v3, screenWidth:I
    const/16 v2, 0x1e0

    .line 3154
    .local v2, screenHeight:I
    :goto_0
    const-string v4, "Camcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeForPreviewAspectRatio - width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    move-result v1

    .line 3162
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3163
    return v1

    .line 3118
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3119
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3120
    .restart local v2       #screenHeight:I
    goto :goto_0

    .line 3122
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3123
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3124
    .restart local v2       #screenHeight:I
    goto :goto_0

    .line 3126
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3127
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3128
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 3130
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3131
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3132
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 3134
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3135
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3136
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 3138
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3139
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3140
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 3142
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3143
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3144
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 3146
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 3147
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 3148
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 3116
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_5
        0xc -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_4
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method public restartInactivityTimer()V
    .locals 1

    .prologue
    .line 4603
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4608
    :goto_0
    return-void

    .line 4606
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->stopInactivityTimer()V

    .line 4607
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startInactivityTimer()V

    goto :goto_0
.end method

.method public resumeAudioPlayback_TimerBgm()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 651
    return-void
.end method

.method protected resumeMwCamcorder()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 1416
    const-string v0, "Camcorder"

    const-string v1, "WINDOW_FOCUS_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1420
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1427
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1429
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto :goto_0
.end method

.method public setCamcorderSideMenuDefaultFocus()V
    .locals 1

    .prologue
    .line 4820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4821
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setDefaultFocus()Z

    .line 4822
    :cond_0
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 4243
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setConnectingStateGPS(I)V

    .line 4244
    :cond_0
    return-void
.end method

.method public setContinuousAF()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 2814
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2815
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 3698
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateUIWhenDefaultLayout()V

    .line 3699
    return-void
.end method

.method public setDvfsBooster(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 4813
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 4814
    new-instance v0, Landroid/os/DVFSHelper;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;IJ)V

    sput-object v0, Lcom/sec/android/app/camera/Camcorder;->mDvfsHelper:Landroid/os/DVFSHelper;

    .line 4816
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 4817
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 4689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 4690
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 4591
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 4592
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 4010
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 4011
    return-void
.end method

.method public setPinupMode(Z)V
    .locals 0
    .parameter "pinupMode"

    .prologue
    .line 4805
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsPinupMode:Z

    .line 4806
    return-void
.end method

.method public setRecordingStopAvailable(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 2862
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 2863
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4587
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setSelectedMenuId(I)V

    .line 4588
    :cond_0
    return-void
.end method

.method public setSurfaceTransparent()V
    .locals 4

    .prologue
    const/16 v3, 0x1f6

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1486
    :cond_0
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 2392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 2394
    return-void
.end method

.method public setWeatherConnect(Z)V
    .locals 1
    .parameter "connect"

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v0, :cond_0

    .line 4796
    if-eqz p1, :cond_1

    .line 4797
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Connect()V

    .line 4802
    :cond_0
    :goto_0
    return-void

    .line 4799
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Disconnect()V

    goto :goto_0
.end method

.method public showAudioRecordingIndicator()V
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showAudioOffIndicator()V

    .line 2855
    :cond_0
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4612
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showEditBackground(Z)V

    .line 4614
    :cond_0
    return-void
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(I)V

    .line 2386
    :cond_0
    return-void
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 4582
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showShutterButton()V

    .line 4583
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenu()V

    .line 4575
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 4566
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenuItems()V

    .line 4567
    return-void
.end method

.method public showSnapshotLimitationDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 4736
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4772
    :cond_0
    :goto_0
    return-void

    .line 4739
    :cond_1
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showSnapshotLimitationDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 4741
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4742
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4744
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4745
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4746
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 4748
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090151

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4750
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4751
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4752
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4753
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4754
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4756
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$17;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$17;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4763
    const v5, 0x7f0900aa

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$18;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$18;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4769
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 4770
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showWaitingAnimation()V
    .locals 0

    .prologue
    .line 1879
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 1880
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->shrinkFocusRect()V

    .line 2201
    :cond_0
    return-void
.end method

.method public startContinuousAF()V
    .locals 4

    .prologue
    .line 4693
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v1, :cond_1

    .line 4702
    :cond_0
    :goto_0
    return-void

    .line 4696
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->startContinuousAF()V

    .line 4697
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4698
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 4699
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 4700
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    goto :goto_0
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 4348
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v1, :cond_0

    .line 4349
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v1, :cond_1

    .line 4351
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4446
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4354
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4355
    .local v0, orientation:I
    const-string v1, "Camcorder"

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

    .line 4357
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 4359
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 4360
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4443
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4348
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startPostRecordingSnapAnimation()V
    .locals 7

    .prologue
    .line 4495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 4496
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4497
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4501
    :cond_0
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4502
    .local v6, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4503
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$14;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 4520
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 4522
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4527
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :goto_0
    monitor-exit p0

    return-void

    .line 4495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4524
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 4705
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 4706
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopContinuousAF()V

    .line 4707
    :cond_0
    return-void
.end method

.method public updateCamcorderSpeedMenu()V
    .locals 0

    .prologue
    .line 2887
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x68

    .line 2660
    const-string v0, "Camcorder"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2663
    const-string v0, "Camcorder"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2667
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2669
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2672
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2675
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2681
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2684
    :cond_1
    return-void
.end method

.method public updateRecordingMenu()V
    .locals 4

    .prologue
    .line 3659
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3660
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 3661
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3662
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 3664
    :cond_0
    return-void
.end method

.method public updateRecordingSnapThumbnail(I)V
    .locals 3
    .parameter "orientationForPicture"

    .prologue
    const/4 v2, 0x1

    .line 4546
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4547
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4548
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 4549
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 4552
    :cond_0
    return-void
.end method

.method public updateRemainTime()V
    .locals 2

    .prologue
    .line 4115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 4116
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 4117
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRemainTime(I)V

    .line 4119
    :cond_0
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 2688
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideBackground()V

    .line 2703
    :cond_0
    :goto_0
    return-void

    .line 2700
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 4

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 3716
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3717
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3718
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v0, :cond_0

    .line 3719
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3721
    :cond_0
    if-eqz v1, :cond_1

    .line 3722
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 3723
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 3725
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3726
    return-void
.end method

.method public updateUIWhenResetSettings()V
    .locals 6

    .prologue
    const/16 v5, 0xbd1

    .line 3729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 3730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 3731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 3732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 3733
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 3734
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 3735
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 3737
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3738
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 3739
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3746
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0xbd2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3747
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v2, :cond_1

    .line 3748
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 3749
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 3751
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3752
    return-void

    .line 3741
    .end local v2           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 3742
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_0

    .line 3743
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 2762
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 2764
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2766
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2767
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2777
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2779
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    .line 2782
    :cond_0
    return-void
.end method
