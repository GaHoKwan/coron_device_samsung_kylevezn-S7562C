.class public Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLNewPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:F = 0.0f

.field private static final LANDSCAPE_GUIDE_TRI_MARGIN:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LANDSCAPE_STANDBY_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LANDSCAPE_STANDBY_RECT_WIDTH:F = 0.0f

.field private static final LIVEPREVIEW_ALPHA_ANIM_TIME:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_Y_180:F = 0.0f

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_X_90:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_RECT_THICKNESS:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_HEIGHT:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_WIDTH:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_X:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_WAIRNING_RIGHT_TEXT_MARGIN:F = 0.0f

.field private static final MESSAGE_PANORAMA_PROCESSING:I = 0x4

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field protected static NORMAL_PREVIEW_HEIGHT:I = 0x0

.field protected static NORMAL_PREVIEW_WIDTH:I = 0x0

.field private static PANORAMASHOT_POPUP_GROUP_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_WIDTH:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_X:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_Y:F = 0.0f

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static PANORAMASHOT_PROGRESSBAR_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_Y:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x0

.field private static final PORTRAIT_GUIDE_TRI_MARGIN:I = 0x14

#the value of this static final field might be set in the static constructor
.field private static final PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PORTRAIT_STANDBY_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PORTRAIT_STANDBY_RECT_WIDTH:F = 0.0f

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:F = 0.0f

.field protected static SCREEN_WIDTH:F = 0.0f

.field protected static SIDE_WIDTH:I = 0x0

.field private static STATUSBAR_HEIGHT:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "TwGLNewPanoramaMenu"

.field private static final VIEWFINDER_DESTINATION_X:F

.field private static final VIEWFINDER_DESTINATION_Y:F


# instance fields
.field private fixedOrientation:I

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field mHideLivePreview:Ljava/lang/Runnable;

.field private mIsPanoramaCapturing:Z

.field private mIsPanoramaStitching:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaWarning:Z

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mTri:[[Lcom/sec/android/glview/TwGLImage;

.field private mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBox:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;

.field private mWarning_MarginX:F

.field private mWarning_MarginY:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4080

    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    const/high16 v3, 0x4000

    .line 60
    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    .line 62
    const v0, 0x7f0700a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    .line 63
    const v0, 0x7f0700a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    .line 64
    const v0, 0x7f0700bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SIDE_WIDTH:I

    .line 65
    const v0, 0x7f0700a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    .line 66
    const v0, 0x7f0700a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_HEIGHT:I

    .line 68
    const v0, 0x7f07018c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    .line 69
    const v0, 0x7f07018d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    .line 70
    const v0, 0x7f07018e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    .line 71
    const v0, 0x7f07018f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    .line 72
    const v0, 0x7f0701a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    .line 73
    const v0, 0x7f0701a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    .line 74
    const v0, 0x7f0701a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    .line 75
    const v0, 0x7f0701a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    .line 76
    const v0, 0x7f080027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    .line 77
    const v0, 0x7f070192

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    .line 78
    const v0, 0x7f070193

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    .line 79
    const v0, 0x7f07019d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    .line 80
    const v0, 0x7f07019e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [F

    const v1, 0x7f0701a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x7f0701a6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    const v1, 0x7f0701a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x7f0701a8

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 85
    const v0, 0x7f0700a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->STATUSBAR_HEIGHT:F

    .line 88
    const v0, 0x7f070093

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    .line 89
    const v0, 0x7f0701aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    .line 90
    const v0, 0x7f0700a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    const v1, 0x7f0700bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    .line 91
    const v0, 0x7f0700a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_Y:F

    .line 92
    const v0, 0x7f080028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_SIZE:F

    .line 94
    const v0, 0x7f070097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    .line 95
    const v0, 0x7f070098

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    .line 97
    const v0, 0x7f070094

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 98
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    .line 99
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    mul-float/2addr v0, v5

    div-float/2addr v0, v6

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 100
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    .line 102
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 103
    const v0, 0x7f070095

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 104
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    .line 106
    const v0, 0x7f070096

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 107
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    .line 108
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 109
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    .line 110
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    .line 111
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    .line 112
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 114
    const v0, 0x7f070099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 115
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 116
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 117
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 118
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 123
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    .line 124
    const v0, 0x7f07009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    .line 126
    const v0, 0x7f07009e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_WAIRNING_RIGHT_TEXT_MARGIN:F

    .line 130
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    .line 131
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    .line 132
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 243
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 158
    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/sec/android/glview/TwGLImage;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    .line 185
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHideLivePreview:Ljava/lang/Runnable;

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 248
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 249
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v6, 0x7f0201be

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 255
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 256
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    const v6, 0x7f0201bf

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 257
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    const v6, 0x7f0201c1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201b9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f0201b8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201b6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f0201b7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ba

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v5

    const v6, 0x7f0201bb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201b5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v5

    const v6, 0x7f0201b4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 290
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/4 v0, 0x4

    if-ge v9, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 290
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 299
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000e

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 302
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f02023d

    const v7, 0x7f02023c

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 315
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900dd

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201b9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f0201b8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 324
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ba

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v5

    const v6, 0x7f0201bb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 332
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v4

    const/high16 v5, 0x4000

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v8

    mul-float/2addr v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ca

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 354
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f090197

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setStrokeStyle(F)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 365
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201c1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 369
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    const/high16 v6, 0x4000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->init()V

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->onOrientationChanged(I)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private enterOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x4000

    .line 1825
    const-string v0, "TwGLNewPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    packed-switch p1, :pswitch_data_0

    .line 1854
    :goto_0
    return-void

    .line 1828
    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1829
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1830
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1831
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    goto :goto_0

    .line 1834
    :pswitch_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1835
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1836
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1837
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    goto :goto_0

    .line 1840
    :pswitch_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1841
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1842
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1843
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    goto :goto_0

    .line 1846
    :pswitch_3
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1847
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1848
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1849
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    goto :goto_0

    .line 1826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1368
    return-void
.end method

.method private updateLivePreviewLayout(Z)V
    .locals 41
    .parameter "detectedDirection"

    .prologue
    .line 1389
    const-string v5, "TwGLNewPanoramaMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLivePreviewLayout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-gtz v5, :cond_1

    .line 1391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showPreviewGroup()V

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    if-nez p1, :cond_2

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePreviewGroup()V

    .line 1395
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->enterOrientation(I)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1399
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateArrow()V

    .line 1400
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1410
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1411
    .local v16, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1415
    .end local v16           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_2
    if-eqz p1, :cond_0

    .line 1416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1425
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v39, v5, v8

    .line 1426
    .local v39, widthFocus:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v22, v5, v8

    .line 1428
    .local v22, heightFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v30, v5, v8

    .line 1429
    .local v30, oldLeftGroup:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v32, v5, v8

    .line 1430
    .local v32, oldTopGroup:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v29

    .line 1431
    .local v29, oldLeft:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v31

    .line 1432
    .local v31, oldTop:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v33

    .line 1433
    .local v33, oldWidth:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v28

    .line 1434
    .local v28, oldHeight:F
    const/16 v24, 0x1

    .line 1435
    .local v24, landscape:Z
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1436
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1437
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1438
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v40, v0

    monitor-enter v40

    .line 1441
    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v5, :pswitch_data_0

    .line 1557
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v18, v30, v5

    .line 1558
    .local v18, fromXDeltaRect:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v20, v32, v5

    .line 1559
    .local v20, fromYDeltaRect:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v5, v30, v5

    add-float v29, v29, v5

    .line 1560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    sub-float v17, v29, v5

    .line 1561
    .local v17, fromXDelta:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v5, v32, v5

    add-float v31, v31, v5

    .line 1562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    sub-float v19, v31, v5

    .line 1563
    .local v19, fromYDelta:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float v4, v33, v5

    .line 1564
    .local v4, scaleX:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float v6, v28, v5

    .line 1566
    .local v6, scaleY:F
    new-instance v23, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v23 .. v23}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1571
    .local v23, interpol:Landroid/view/animation/Interpolator;
    if-eqz v24, :cond_3

    .line 1572
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x2

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1573
    .local v3, animRect:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1574
    const-wide/16 v8, 0xb2

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1575
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1576
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1577
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1602
    :goto_2
    new-instance v35, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1603
    .local v35, ta:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1604
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1605
    const-wide/16 v8, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1606
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1607
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setClipRect(Landroid/graphics/Rect;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1615
    monitor-exit v40

    goto/16 :goto_0

    .end local v3           #animRect:Landroid/view/animation/Animation;
    .end local v4           #scaleX:F
    .end local v6           #scaleY:F
    .end local v17           #fromXDelta:F
    .end local v18           #fromXDeltaRect:F
    .end local v19           #fromYDelta:F
    .end local v20           #fromYDeltaRect:F
    .end local v23           #interpol:Landroid/view/animation/Interpolator;
    .end local v35           #ta:Landroid/view/animation/Animation;
    :catchall_0
    move-exception v5

    monitor-exit v40
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1443
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1444
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v26, v5, v8

    .line 1446
    .local v26, leftFocus:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    packed-switch v5, :pswitch_data_1

    .line 1459
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1461
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v38, v5, v8

    .line 1462
    .local v38, width:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1463
    add-float v5, v26, v39

    const/high16 v8, 0x4140

    sub-float v38, v5, v8

    .line 1464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1449
    .end local v38           #width:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_3

    .line 1454
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_3

    .line 1468
    .end local v26           #leftFocus:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1469
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v38, v5, v8

    .line 1470
    .restart local v38       #width:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    sub-float v25, v5, v38

    .line 1471
    .local v25, left:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float v5, v5, v25

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v26, v5, v8

    .line 1473
    .restart local v26       #leftFocus:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    packed-switch v5, :pswitch_data_2

    .line 1486
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v25

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1491
    const/high16 v5, 0x4000

    div-float v5, v39, v5

    sub-float v5, v26, v5

    const/high16 v8, 0x4140

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v38, v5, v8

    .line 1492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1476
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_4

    .line 1481
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_4

    .line 1497
    .end local v25           #left:F
    .end local v26           #leftFocus:F
    .end local v38           #width:F
    :pswitch_7
    const/16 v24, 0x0

    .line 1498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1499
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v21, v5, v8

    .line 1500
    .local v21, height:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v5, v5, v21

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v36, v5, v8

    .line 1501
    .local v36, top:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    sub-float v5, v36, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float v37, v5, v8

    .line 1504
    .local v37, topFocus:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    packed-switch v5, :pswitch_data_3

    .line 1517
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v21, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1521
    const/high16 v5, 0x4000

    div-float v5, v22, v5

    sub-float v5, v36, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v8

    sub-float/2addr v5, v8

    const/high16 v8, 0x41b0

    sub-float v21, v5, v8

    .line 1522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x4190

    sub-float/2addr v8, v9

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1507
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_5

    .line 1512
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_5

    .line 1527
    .end local v21           #height:F
    .end local v36           #top:F
    .end local v37           #topFocus:F
    :pswitch_a
    const/16 v24, 0x0

    .line 1528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1529
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v21, v5, v8

    .line 1530
    .restart local v21       #height:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    const/high16 v8, 0x4000

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float/2addr v5, v8

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float v22, v5, v8

    .line 1531
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    add-float v5, v5, v21

    const/high16 v8, 0x4000

    div-float v8, v22, v8

    sub-float v37, v5, v8

    .line 1533
    .restart local v37       #topFocus:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    packed-switch v5, :pswitch_data_4

    .line 1546
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1548
    const/16 v36, 0x0

    .line 1549
    .restart local v36       #top:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v21, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1551
    add-float v5, v21, v22

    const/high16 v8, 0x4000

    div-float v8, v22, v8

    sub-float v21, v5, v8

    .line 1552
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x4190

    sub-float/2addr v8, v9

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1536
    .end local v36           #top:F
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_6

    .line 1541
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_6

    .line 1579
    .end local v21           #height:F
    .end local v37           #topFocus:F
    .restart local v4       #scaleX:F
    .restart local v6       #scaleY:F
    .restart local v17       #fromXDelta:F
    .restart local v18       #fromXDeltaRect:F
    .restart local v19       #fromYDelta:F
    .restart local v20       #fromYDeltaRect:F
    .restart local v23       #interpol:Landroid/view/animation/Interpolator;
    :cond_3
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    move v8, v4

    move v10, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1580
    .local v7, scaleRect:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1581
    const-wide/16 v8, 0xb2

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1582
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1583
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1584
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1586
    new-instance v27, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1587
    .local v27, moveRect:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1588
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1589
    const-wide/16 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1590
    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1591
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1593
    new-instance v34, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1594
    .local v34, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1595
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1596
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1597
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    move-object/from16 v3, v34

    .restart local v3       #animRect:Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 1441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 1446
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1473
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1504
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1533
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1382
    return-void
.end method

.method public getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .parameter "speed"
    .parameter "direction"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 425
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 426
    .local v1, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 428
    .local v0, anim:Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 454
    :goto_0
    :pswitch_0
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 455
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 456
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 457
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 458
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 460
    return-object v1

    .line 431
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, -0x3df0

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 432
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto :goto_0

    .line 437
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x4210

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 438
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto :goto_0

    .line 443
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, -0x3df0

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 444
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto/16 :goto_0

    .line 449
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x4210

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 450
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto/16 :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 565
    return-void
.end method

.method public hideLivePreview()V
    .locals 2

    .prologue
    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 635
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 637
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1857
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1858
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1859
    return-void
.end method

.method public hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method

.method public hideWarningArrow(Z)V
    .locals 3
    .parameter "all"

    .prologue
    const/4 v2, 0x4

    .line 1351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1353
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1354
    if-eqz p1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1358
    :cond_1
    return-void
.end method

.method public hideWarningBox(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x4

    .line 1361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1363
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f0700a2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->STATUSBAR_HEIGHT:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v2, 0x7f0700a6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f0700a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f0700a6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 422
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPanoramaStitching()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    return v0
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-lez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePreviewGroup()V

    .line 524
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideLivePreview()V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->clearPanoramaRect()V

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 528
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 530
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 531
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 646
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 652
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    if-nez v1, :cond_0

    .line 657
    :cond_3
    if-ne p1, v2, :cond_4

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_4

    .line 659
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_4
    const/16 v1, 0xa8

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_6

    .line 665
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyDown - ZoomKEY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 675
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 680
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 681
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    if-nez v1, :cond_0

    .line 686
    :cond_3
    if-ne p1, v2, :cond_4

    .line 687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_4

    .line 688
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_4
    const/16 v1, 0xa8

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_6

    .line 694
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyDown - ZoomKEY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLivePreviewData([B)V
    .locals 16
    .parameter "data"

    .prologue
    .line 1632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_1

    .line 1633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_0

    .line 1634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 1636
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 1638
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 1640
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1641
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    .line 1642
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to decode RGBA data for live preview. Data: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :goto_0
    return-void

    .line 1646
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1647
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 1649
    :cond_3
    const/4 v8, 0x0

    .local v8, arrowleft:F
    const/4 v9, 0x0

    .line 1650
    .local v9, arrowtop:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v11, v1, v2

    .line 1651
    .local v11, leftFocus:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    add-float v12, v1, v2

    .line 1652
    .local v12, topFocus:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v13, v1, v2

    .line 1653
    .local v13, widthFocus:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v10, v1, v2

    .line 1654
    .local v10, heightFocus:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1655
    .local v3, left:F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1657
    .local v4, top:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1658
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    .line 1659
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v5, v1, v2

    .line 1660
    .local v5, width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v6, v1, v2

    .line 1719
    .local v6, height:F
    :goto_1
    new-instance v1, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 1720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 1722
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ge v1, v2, :cond_b

    .line 1723
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 1724
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1725
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1738
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/high16 v2, 0x4160

    add-float/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1769
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 1770
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    goto/16 :goto_0

    .line 1662
    .end local v5           #width:F
    .end local v6           #height:F
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_1

    .line 1714
    :pswitch_0
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PANORAMA Invalid direction: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1664
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v6, v1, v2

    .line 1665
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v5, v1, v2

    .line 1666
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v13, v1, v2

    .line 1668
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v11, v1

    .line 1669
    add-float v1, v11, v13

    const/high16 v2, 0x4140

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v8, v1, v2

    .line 1670
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4230

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 1671
    goto/16 :goto_1

    .line 1674
    .end local v5           #width:F
    .end local v6           #height:F
    :pswitch_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v6, v1, v2

    .line 1675
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v5, v1, v2

    .line 1676
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    sub-float v3, v1, v5

    .line 1677
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v13, v1, v2

    .line 1678
    const/high16 v1, 0x4000

    div-float v1, v13, v1

    sub-float v1, v3, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v1, v2

    add-float/2addr v11, v1

    .line 1679
    const/high16 v1, 0x4000

    div-float v1, v13, v1

    sub-float v1, v11, v1

    const/high16 v2, 0x4140

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v8, v1, v2

    .line 1680
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4230

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 1681
    goto/16 :goto_1

    .line 1684
    .end local v5           #width:F
    .end local v6           #height:F
    :pswitch_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v5, v1, v2

    .line 1685
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1686
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v13, v1, v2

    .line 1687
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v10, v1, v2

    .line 1688
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v6, v1

    add-float/2addr v12, v1

    .line 1689
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "topFocus 22=="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_8

    .line 1691
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1692
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v4, v1, v2

    .line 1694
    :cond_8
    add-float v1, v6, v10

    const/high16 v2, 0x4000

    div-float v2, v10, v2

    sub-float v9, v1, v2

    .line 1695
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x4190

    sub-float v8, v1, v2

    .line 1696
    goto/16 :goto_1

    .line 1699
    .end local v5           #width:F
    .end local v6           #height:F
    :pswitch_4
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v5, v1, v2

    .line 1700
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1701
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v13, v1, v2

    .line 1702
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v10, v1, v2

    .line 1703
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v1, v2

    sub-float v4, v1, v6

    .line 1704
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sub-int/2addr v2, v14

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float/2addr v1, v2

    add-float/2addr v12, v1

    .line 1705
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_9

    .line 1706
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1707
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v4, v1, v2

    .line 1709
    :cond_9
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v4, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41b0

    sub-float v9, v1, v2

    .line 1710
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x4190

    sub-float v8, v1, v2

    .line 1711
    goto/16 :goto_1

    .line 1728
    :pswitch_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v2, v14

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    sub-float v12, v1, v2

    .line 1729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v11, v12}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2

    .line 1733
    :pswitch_6
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v2, v14

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    sub-float v12, v1, v2

    .line 1734
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v11, v12}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2

    .line 1742
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    packed-switch v1, :pswitch_data_2

    .line 1753
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 1754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_3

    .line 1745
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v2, v14

    invoke-virtual {v1, v2, v12}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_4

    .line 1749
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v2, v14

    invoke-virtual {v1, v2, v12}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_4

    .line 1759
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 1760
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1764
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_5

    .line 1765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x9

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto/16 :goto_3

    .line 1762
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_5

    .line 1772
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    goto/16 :goto_0

    .line 1725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1662
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1742
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1778
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    .line 1781
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1782
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateArrow()V

    .line 1785
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1822
    :cond_1
    return-void

    .line 1789
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1790
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1791
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1792
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1794
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1795
    if-ge v0, v8, :cond_3

    .line 1796
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1797
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1794
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1800
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1

    .line 1806
    .end local v0           #i:I
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1807
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1808
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1809
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1811
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_1

    .line 1812
    if-ge v0, v8, :cond_5

    .line 1813
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1811
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1815
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1816
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_3

    .line 1785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 703
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 709
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 710
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showPreviewGroup()V

    .line 518
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 519
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 714
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 717
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V

    .line 718
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x4000

    .line 729
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_2

    .line 730
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 753
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 773
    :goto_1
    :pswitch_0
    if-eqz p1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 775
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_1

    .line 776
    if-eq p1, v3, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 777
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 780
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 789
    :cond_1
    :goto_2
    return-void

    .line 733
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 740
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 755
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 759
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    const v1, 0x7f0201b5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, 0x7f0201b4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 763
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 767
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 781
    :cond_3
    if-eq p1, v6, :cond_4

    if-ne p1, v4, :cond_1

    .line 782
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 785
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    goto/16 :goto_2

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 753
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public panoramaRectChanged(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/high16 v7, 0x4000

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, rect_x:F
    const/4 v1, 0x0

    .line 856
    .local v1, rect_y:F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_0

    .line 879
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1348
    :cond_0
    :goto_1
    return-void

    .line 858
    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    neg-int v3, p1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 859
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v2, v3

    int-to-float v3, p2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v3, v7

    sub-float v1, v2, v3

    .line 861
    goto :goto_0

    .line 863
    :pswitch_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    neg-int v3, p1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 864
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    neg-int v3, p2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v3, v7

    sub-float v1, v2, v3

    .line 866
    goto :goto_0

    .line 868
    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    neg-int v3, p1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v3, v7

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 869
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    neg-int v3, p2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 870
    goto/16 :goto_0

    .line 872
    :pswitch_4
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v2, v3

    int-to-float v3, p1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    sub-float v0, v2, v3

    .line 873
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    neg-int v3, p2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v1, v2, v3

    goto/16 :goto_0

    .line 882
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_1

    .line 1339
    :goto_2
    :pswitch_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-le v2, v9, :cond_0

    .line 1340
    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1341
    :cond_2
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1342
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 1343
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 1344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 1345
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPanorama()V

    goto/16 :goto_1

    .line 885
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 886
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 887
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/16 v2, 0x200

    if-lt p1, v2, :cond_4

    :cond_3
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    const/16 v2, -0x200

    if-le p1, v2, :cond_d

    .line 888
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 889
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 893
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_6

    .line 894
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 895
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x12c

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 896
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x12c

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 897
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 898
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v9}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 899
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 900
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 901
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 902
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 903
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 928
    :cond_6
    :goto_3
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_9

    :cond_7
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_9

    :cond_8
    const/16 v2, -0x1f8

    if-lt p2, v2, :cond_9

    const/16 v2, 0x1f8

    if-le p2, v2, :cond_3f

    .line 929
    :cond_9
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1c

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    .line 930
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_2

    .line 965
    :goto_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_a

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_1b

    .line 966
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 970
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 971
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 972
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 973
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1109
    :cond_b
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1110
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1111
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_c

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_3e

    .line 1112
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sub-float/2addr v3, v4

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1115
    :goto_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_2

    .line 905
    :cond_d
    const/16 v2, 0x200

    if-le p1, v2, :cond_e

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_10

    :cond_e
    const/16 v2, -0x200

    if-ge p1, v2, :cond_f

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_10

    :cond_f
    const/16 v2, -0x1f8

    if-lt p2, v2, :cond_10

    const/16 v2, 0x1f8

    if-le p2, v2, :cond_12

    .line 906
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 907
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 908
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 911
    :cond_11
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_6

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 913
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x96

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 914
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x96

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 915
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 916
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v9}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 917
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 918
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 919
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 920
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 921
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_3

    .line 924
    :cond_12
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_3

    .line 932
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 933
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 934
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_13

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_14

    .line 935
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 937
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 940
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 942
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_16

    .line 943
    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 945
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_WAIRNING_RIGHT_TEXT_MARGIN:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 948
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 949
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 950
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_18

    .line 951
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 953
    :cond_18
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 956
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 957
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 958
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_19

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_1a

    .line 959
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 961
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 968
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_5

    .line 974
    :cond_1c
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_27

    .line 975
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_3

    .line 1010
    :goto_8
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_1d

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_26

    .line 1011
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1015
    :goto_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1016
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1017
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1018
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_6

    .line 977
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 978
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 979
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_1e

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_1f

    .line 980
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 982
    :cond_1f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_WAIRNING_RIGHT_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 985
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 986
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 987
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_21

    .line 988
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 990
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 993
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 994
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 995
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_23

    .line 996
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 998
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 1001
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1002
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1003
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_24

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_25

    .line 1004
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 1006
    :cond_25
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 1013
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_9

    .line 1019
    :cond_27
    const/16 v2, -0x1f8

    if-lt p2, v2, :cond_28

    const/16 v2, 0x1f8

    if-le p2, v2, :cond_b

    .line 1020
    :cond_28
    const/16 v2, -0x1f8

    if-ge p2, v2, :cond_33

    .line 1021
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_4

    .line 1056
    :goto_a
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_29

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_32

    .line 1057
    :cond_29
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1060
    :goto_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1061
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1062
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1063
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1023
    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1024
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1025
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_2a

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_2b

    .line 1026
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1028
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1031
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1033
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_2d

    .line 1034
    :cond_2c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1036
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1039
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1041
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_2f

    .line 1042
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1044
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1047
    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1048
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1049
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_30

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_31

    .line 1050
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1052
    :cond_31
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1059
    :cond_32
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_b

    .line 1065
    :cond_33
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_5

    .line 1099
    :goto_c
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_34

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_3d

    .line 1100
    :cond_34
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1103
    :goto_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1104
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1105
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1106
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1067
    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1068
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1069
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_35

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_36

    .line 1070
    :cond_35
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1072
    :cond_36
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1075
    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1076
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1077
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_38

    .line 1078
    :cond_37
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1080
    :cond_38
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1083
    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1084
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1085
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_39

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_3a

    .line 1086
    :cond_39
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1088
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1091
    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1092
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1093
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_3b

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_3c

    .line 1094
    :cond_3b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1096
    :cond_3c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1102
    :cond_3d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_d

    .line 1114
    :cond_3e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_7

    .line 1117
    :cond_3f
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1118
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v9, :cond_40

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v10, :cond_41

    .line 1119
    :cond_40
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X_90:F

    sub-float/2addr v3, v4

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1122
    :goto_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1123
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 1124
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningBox(I)V

    .line 1125
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    goto/16 :goto_2

    .line 1121
    :cond_41
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_e

    .line 1130
    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1131
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1132
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_42

    const/16 v2, -0x140

    if-gt p2, v2, :cond_43

    :cond_42
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4b

    const/16 v2, 0x120

    if-ge p2, v2, :cond_4b

    .line 1133
    :cond_43
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1134
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1138
    :cond_44
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_45

    .line 1139
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x12c

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1141
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x12c

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1142
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1143
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v9}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1145
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1146
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1147
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1148
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1173
    :cond_45
    :goto_f
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_46

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_47

    :cond_46
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_56

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_56

    .line 1174
    :cond_47
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_52

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_52

    .line 1175
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_6

    .line 1198
    :goto_10
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v10, :cond_48

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_51

    .line 1199
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1203
    :goto_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1204
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1205
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1206
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1240
    :cond_49
    :goto_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1241
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v10, :cond_4a

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_55

    .line 1242
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v3, v4

    sub-float v3, v1, v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1246
    :goto_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1247
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1150
    :cond_4b
    const/16 v2, -0x140

    if-ge p2, v2, :cond_4c

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4e

    :cond_4c
    const/16 v2, 0x120

    if-le p2, v2, :cond_4d

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4e

    :cond_4d
    const/16 v2, -0x380

    if-lt p1, v2, :cond_4e

    const/16 v2, 0x380

    if-le p1, v2, :cond_50

    .line 1151
    :cond_4e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1156
    :cond_4f
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_45

    .line 1157
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1158
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x96

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1159
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x96

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1161
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v9}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1162
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1163
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1165
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1166
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_f

    .line 1169
    :cond_50
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_f

    .line 1177
    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1179
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_10

    .line 1182
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_10

    .line 1187
    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1188
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1189
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_10

    .line 1192
    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1194
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_WAIRNING_RIGHT_TEXT_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_10

    .line 1201
    :cond_51
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_11

    .line 1207
    :cond_52
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarning_MarginY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_49

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_49

    .line 1208
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_7

    .line 1231
    :goto_14
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v10, :cond_53

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_54

    .line 1232
    :cond_53
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1235
    :goto_15
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1236
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1237
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1238
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_12

    .line 1210
    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1211
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1212
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_14

    .line 1215
    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1216
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1217
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_14

    .line 1220
    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1222
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_WAIRNING_RIGHT_TEXT_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_14

    .line 1225
    :pswitch_1f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1226
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_14

    .line 1234
    :cond_54
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_15

    .line 1244
    :cond_55
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_13

    .line 1248
    :cond_56
    const/16 v2, -0x380

    if-lt p1, v2, :cond_57

    const/16 v2, 0x380

    if-le p1, v2, :cond_5f

    .line 1249
    :cond_57
    const/16 v2, -0x380

    if-ge p1, v2, :cond_5b

    .line 1250
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_8

    .line 1273
    :goto_16
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v10, :cond_58

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_5a

    .line 1274
    :cond_58
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1277
    :goto_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1278
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1279
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1280
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1313
    :goto_18
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1315
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_59

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v9, :cond_5e

    .line 1316
    :cond_59
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1320
    :goto_19
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1321
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1252
    :pswitch_20
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1253
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1254
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_16

    .line 1257
    :pswitch_21
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1258
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1259
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_16

    .line 1262
    :pswitch_22
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1264
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_16

    .line 1267
    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1268
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1269
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_16

    .line 1276
    :cond_5a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_17

    .line 1282
    :cond_5b
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_9

    .line 1304
    :goto_1a
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eq v2, v10, :cond_5c

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v8, :cond_5d

    .line 1305
    :cond_5c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1308
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1309
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1310
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1311
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_18

    .line 1284
    :pswitch_24
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1285
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1286
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_1a

    .line 1289
    :pswitch_25
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1291
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_1a

    .line 1294
    :pswitch_26
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1295
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1296
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_1a

    .line 1299
    :pswitch_27
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1300
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 1301
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_1a

    .line 1307
    :cond_5d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_1b

    .line 1318
    :cond_5e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v3, v4

    sub-float v3, v1, v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_19

    .line 1324
    :cond_5f
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-eqz v2, :cond_60

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->fixedOrientation:I

    if-ne v2, v9, :cond_61

    .line 1325
    :cond_60
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 1329
    :goto_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v11}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1330
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 1331
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningBox(I)V

    .line 1332
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    goto/16 :goto_2

    .line 1327
    :cond_61
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y_180:F

    sub-float/2addr v3, v4

    sub-float v3, v1, v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1c

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 882
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 930
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 975
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 1021
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 1065
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 1175
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    .line 1208
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    .line 1250
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1282
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->resetAcquisitionProgress()V

    .line 536
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 537
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    .line 538
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    .line 539
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 540
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->clearPanoramaRect()V

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 544
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 545
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 546
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 555
    :cond_1
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 556
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideCaptureTri()V

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePostCaptureLayout()V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 560
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 479
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->startCancelTimer()V

    .line 578
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 821
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 822
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 588
    const-string v0, "TwGLNewPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panoramaRectChanged mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 591
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 593
    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 1624
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return-void
.end method

.method public setOnNewPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    .line 641
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 600
    const-string v0, "TwGLNewPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showPostCaptureLayout()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHideLivePreview:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 610
    if-nez p1, :cond_1

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    .line 613
    :cond_1
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 630
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 631
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1862
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePreviewGroup()V

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1864
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 1865
    return-void
.end method

.method public showPreviewGroup()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateArrow()V

    .line 488
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 502
    :cond_1
    return-void

    .line 491
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 581
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    :cond_0
    return-void
.end method

.method public stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 834
    :cond_3
    return-void
.end method

.method public updateArrow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4270

    const/high16 v6, 0x41a0

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 793
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 811
    :goto_0
    return-void

    .line 795
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v8

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 799
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v8

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 803
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 807
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SIDE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SIDE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
