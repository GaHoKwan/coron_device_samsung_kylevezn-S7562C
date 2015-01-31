.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BOTTOM_MENU_BAR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CAF_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CUR_SIZE_GROUP_WIDTH:I = 0x0

.field private static final DISABLE_SEC:J = 0x3e8L

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_REC_TIME_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MARGIN:I = 0x0

.field public static final MAX_EMAIL_SIZE:J = 0x3200000L

.field private static final MAX_RECORDING_TIME:I = 0x1517f

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_NORMAL_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_NORMAL_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_POS_X:I = 0x0

.field private static final PROGRESSBAR_TEXT_INTERVAL:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final PROGRESSBAR_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_PORTRAIT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_GROUP_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_MAX_SIZE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PROGRESS_SIZE_TEXT_WIDTH:I = 0x0

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_MENU_TAKEPICTURE:I = 0x5

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final RECORDING_VIEW_MARGIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REC_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REC_ICON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REC_ICON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_CAMCORDER_MARGIN:I = 0x0

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final SHIFT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDE_MENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SNAPBUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SNAPBUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final STOPBUTTON_POS_Y:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderRecordingMenu"

.field private static final TEXT_SIZE:I


# instance fields
.field private isEmailMode:Z

.field private isMMSMode:Z

.field private mCAFButton:Lcom/sec/android/glview/TwGLButton;

.field private mCurRecSize:Lcom/sec/android/glview/TwGLText;

.field private mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mHMS:Ljava/lang/String;

.field private mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

.field private mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPauseTime:J

.field private mProgress:I

.field private mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeText:Lcom/sec/android/glview/TwGLText;

.field private mRecordingLimitTime:I

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mResumeButton:Lcom/sec/android/glview/TwGLButton;

.field private mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mResumeTime:J

.field private mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

.field private mStopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f0700a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    .line 34
    const v0, 0x7f0700a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    .line 35
    const v0, 0x7f0700bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    .line 36
    const v0, 0x7f0700a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    .line 37
    const v0, 0x7f0700a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    .line 38
    const v0, 0x7f080026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    .line 39
    const v0, 0x7f0700e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    .line 40
    const v0, 0x7f070013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    .line 41
    const v0, 0x7f070014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    .line 42
    const v0, 0x7f070018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    .line 43
    const v0, 0x7f070019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_VIEW_MARGIN:I

    .line 46
    const v0, 0x7f0700ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    .line 47
    const v0, 0x7f0700eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    .line 48
    const v0, 0x7f0700df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    .line 49
    const v0, 0x7f0700ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    .line 50
    const v0, 0x7f070016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_X:I

    .line 51
    const v0, 0x7f070017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_Y:I

    .line 54
    const v0, 0x7f0700e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    .line 55
    const v0, 0x7f070193

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    .line 56
    const v0, 0x7f0700e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 58
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    .line 59
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    .line 60
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    .line 61
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 62
    const v0, 0x7f0700e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    .line 63
    const v0, 0x7f0700e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    .line 64
    const v0, 0x7f0700e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    .line 67
    const v0, 0x7f0700e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    .line 68
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_X:I

    .line 69
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    .line 70
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    .line 73
    const v0, 0x7f0700c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    .line 74
    const v0, 0x7f0700c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    .line 75
    const v0, 0x7f0700c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    .line 76
    const v0, 0x7f0700ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    .line 79
    const v0, 0x7f07000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_WIDTH:I

    .line 80
    const v0, 0x7f07000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPBUTTON_POS_Y:I

    .line 83
    const v0, 0x7f070015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOPBUTTON_POS_Y:I

    .line 86
    const v0, 0x7f070010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    .line 87
    const v0, 0x7f070011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    .line 88
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2e

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    .line 89
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 130
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 132
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 133
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 134
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 135
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 136
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 137
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 141
    iput-wide v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    .line 142
    iput-wide v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    .line 144
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 157
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->init()V

    .line 160
    return-void
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 589
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 604
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 606
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    goto :goto_0
.end method

.method private hmsConvert(I)V
    .locals 8
    .parameter "seconds"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 504
    const v4, 0x1517f

    if-le p1, v4, :cond_0

    .line 505
    const p1, 0x1517f

    .line 508
    :cond_0
    div-int/lit16 v0, p1, 0xe10

    .line 509
    .local v0, hr:I
    div-int/lit8 v4, p1, 0x3c

    mul-int/lit8 v5, v0, 0x3c

    sub-int v1, v4, v5

    .line 510
    .local v1, min:I
    rem-int/lit8 v2, p1, 0x3c

    .line 512
    .local v2, sec:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v3, str:Ljava/lang/StringBuilder;
    if-ge v0, v7, :cond_1

    .line 515
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    :goto_0
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    if-ge v1, v7, :cond_2

    .line 524
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    :goto_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    if-ge v2, v7, :cond_3

    .line 533
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 540
    return-void

    .line 518
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private init()V
    .locals 12

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 165
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 166
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 168
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0201d8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 183
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 184
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "0K"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 196
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_CAMCORDER_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 197
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "0K"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 198
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02023d

    const v7, 0x7f02023c

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 199
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 200
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "50M"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_VIEW_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 219
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v5, v0

    const v6, 0x7f02017d

    const v7, 0x7f02017e

    const v8, 0x7f02017d

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090187

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 232
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v5, v0

    const v6, 0x7f02000a

    const v7, 0x7f02000b

    const v8, 0x7f02000a

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 245
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02017c

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 256
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_Y:I

    int-to-float v3, v3

    const v4, 0x7f020008

    const v5, 0x7f020009

    const v6, 0x7f02000b

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09018a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 299
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHUTTER_BUTTON_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOPBUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02021b

    const v5, 0x7f02021c

    const v6, 0x7f02021b

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09018a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x5351

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 314
    return-void
.end method

.method private isNotElapsed1SEC()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 659
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_2

    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 664
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 660
    goto :goto_0

    .line 661
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 664
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 320
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 325
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 328
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 333
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 338
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 343
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 348
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 353
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 356
    :cond_7
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 357
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 358
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 359
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 360
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 361
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 362
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 364
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 365
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 366
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 367
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 369
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 370
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public hideCAFButton()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 656
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 670
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_6

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isPauseResumeMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_2

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    .line 674
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 718
    :goto_0
    return v0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 678
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 703
    goto :goto_0

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    .line 686
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v6, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 687
    goto :goto_0

    .line 689
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_4

    move v0, v1

    .line 690
    goto :goto_0

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 693
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1

    .line 701
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_1

    .line 704
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_7

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->setContinuousAF()V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    move v0, v1

    .line 707
    goto :goto_0

    .line 708
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_9

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    if-ge v0, v4, :cond_8

    move v0, v1

    .line 710
    goto :goto_0

    .line 712
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    move v0, v1

    .line 713
    goto :goto_0

    .line 714
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_a

    .line 715
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v0, v1

    .line 716
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 718
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 492
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 493
    return-void
.end method

.method public onHideMenu()V
    .locals 0

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 497
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 722
    move v0, p1

    .line 734
    .local v0, fakeKeyCode:I
    const/16 v3, 0x18

    if-eq v0, v3, :cond_0

    const/16 v3, 0x19

    if-ne v0, v3, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 738
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 739
    goto :goto_0

    .line 742
    :cond_2
    const/16 v3, 0x1b

    if-eq v0, v3, :cond_3

    const/16 v3, 0x17

    if-eq v0, v3, :cond_3

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 745
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressedByHardKey()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    move v1, v2

    .line 752
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 759
    move v0, p1

    .line 771
    .local v0, fakeKeyCode:I
    const/16 v3, 0x18

    if-eq v0, v3, :cond_0

    const/16 v3, 0x19

    if-ne v0, v3, :cond_1

    .line 828
    :cond_0
    :goto_0
    return v1

    .line 775
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 776
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 777
    goto :goto_0

    .line 780
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v1, v2

    .line 781
    goto :goto_0

    .line 784
    :cond_3
    const/16 v3, 0x1b

    if-eq v0, v3, :cond_4

    const/16 v3, 0x17

    if-eq v0, v3, :cond_4

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    .line 788
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressedByHardKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 822
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    move v1, v2

    .line 825
    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x0

    .line 834
    packed-switch p1, :pswitch_data_0

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 837
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    if-eqz v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveBaseLayoutAbsolute(FF)V

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 852
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_4

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 855
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    if-eqz v0, :cond_5

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 858
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_6

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveBaseLayoutAbsolute(FF)V

    .line 861
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 501
    return-void
.end method

.method protected onShow()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isPauseResumeMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->getRecordingState()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-nez v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 392
    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 393
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_VIEW_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 440
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 458
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 469
    :cond_4
    :goto_4
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 471
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    if-nez v0, :cond_6

    .line 472
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 475
    :cond_6
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->setDefaultFocus()Z

    .line 477
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 478
    return-void

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopPauseButton_NoPauseResume:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 388
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    goto/16 :goto_1

    .line 407
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 408
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 409
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_VIEW_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto/16 :goto_2

    .line 424
    :cond_a
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    .line 425
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMMSMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CUR_SIZE_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PREVIEW_NORMAL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SHIFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->BOTTOM_MENU_BAR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto/16 :goto_2

    .line 454
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    .line 465
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    return-void
.end method

.method public setDefaultFocus()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    return v0
.end method

.method public setRecordingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 645
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 646
    return-void
.end method

.method public showCAFButton()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 651
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 611
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getRequestedDurationLimit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    .line 615
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stepSecond()V

    .line 621
    return-void
.end method

.method public stepSecond()V
    .locals 5

    .prologue
    .line 624
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()I

    move-result v0

    .line 626
    .local v0, drift:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    rsub-int/lit8 v3, v0, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 627
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 633
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 8
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x400

    .line 568
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isMMSMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    if-eqz v2, :cond_2

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v0

    .line 570
    .local v0, mMaxSize:J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 573
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 574
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 586
    .end local v0           #mMaxSize:J
    :goto_0
    return-void

    .line 577
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 581
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 584
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v4

    const-wide/32 v6, 0x500000

    add-long/2addr v4, v6

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 4
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    .line 543
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 544
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)V

    .line 546
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingLimitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 561
    :goto_1
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1
.end method
