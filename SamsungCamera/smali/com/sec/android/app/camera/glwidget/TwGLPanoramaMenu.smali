.class public Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
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

.field private static final LIVEPREVIEW_ALPHA_ANIM_TIME:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_RECT_PADDING:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_RECT_THICKNESS:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_WIDTH:F = 0.0f

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_ARROWS_COLOR:I = 0x0

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
.field private static final PANORAMASHOT_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_RECT_MARGIN:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_ROOT_SHIFT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_TRI_HEIGHT:I = 0x0

.field private static final PANORAMASHOT_TRI_POS_X:[I = null

.field private static final PANORAMASHOT_TRI_POS_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_TRI_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_VIEWFINDER_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_VIEWFINDER_DESTINATION_COLOR:I = 0x0

.field private static final PANORAMASHOT_VIEWFINDER_DESTINATION_THICKNESS:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_VIEWFINDER_THICKNESS:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x0

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static STATUSBAR_HEIGHT:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "TwGLPanoramaMenu"

.field private static final VIEWFINDER_DESTINATION_HEIGHT:F

.field private static final VIEWFINDER_DESTINATION_WIDTH:F

.field private static final VIEWFINDER_DESTINATION_X:F

.field private static final VIEWFINDER_DESTINATION_Y:F


# instance fields
.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mDetectedDirection:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsPanoramaCapturing:Z

.field private mLandscapeStitching:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mPostProgress:I

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 52
    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    .line 56
    const v0, 0x7f070022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    .line 58
    const v0, 0x7f07018c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    .line 59
    const v0, 0x7f07018d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    .line 60
    const v0, 0x7f07018e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    .line 61
    const v0, 0x7f07018f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    .line 62
    const v0, 0x7f0701a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    .line 63
    const v0, 0x7f0701a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    .line 64
    const v0, 0x7f0701a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    .line 65
    const v0, 0x7f0701a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    .line 66
    const v0, 0x7f080027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    .line 67
    const v0, 0x7f070192

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    .line 68
    const v0, 0x7f070193

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    .line 69
    const v0, 0x7f07019d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    .line 70
    const v0, 0x7f07019e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    .line 71
    new-array v0, v6, [F

    const v1, 0x7f0701a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0701a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 73
    new-array v0, v6, [F

    const v1, 0x7f0701a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0701a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 75
    const v0, 0x7f0700a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STATUSBAR_HEIGHT:F

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0701b4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0701b5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0701b6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const/4 v1, 0x3

    const v2, 0x7f0701b7

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0701b8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0701b9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0701ba

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const/4 v1, 0x3

    const v2, 0x7f0701bb

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    .line 86
    const v0, 0x7f0701bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    .line 87
    const v0, 0x7f0701bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    .line 89
    const v0, 0x7f0701be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    .line 90
    const v0, 0x7f0701bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    .line 91
    const v0, 0x7f0701c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    .line 93
    const v0, 0x7f0701a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    .line 94
    const v0, 0x7f0701aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    .line 95
    const v0, 0x7f0700a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v7

    const v1, 0x7f0700bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_X:F

    .line 96
    const v0, 0x7f0700a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_Y:F

    .line 97
    const v0, 0x7f080028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_SIZE:F

    .line 99
    const v0, 0x7f0701c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 100
    const v0, 0x7f0701c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 101
    const v0, 0x7f0701c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 102
    const v0, 0x7f0701c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 103
    const v0, 0x7f0701c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 104
    const v0, 0x7f0701c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 105
    const v0, 0x7f0701c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    .line 106
    const v0, 0x7f0701c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 107
    const v0, 0x7f0701c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 108
    const v0, 0x7f0701ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 109
    const v0, 0x7f070023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_PADDING:F

    .line 110
    const v0, 0x7f0701cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 113
    const v0, 0x7f0701cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    .line 114
    const v0, 0x7f0701cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    .line 115
    const v0, 0x7f0701ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_WIDTH:F

    .line 116
    const v0, 0x7f0701cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_HEIGHT:F

    .line 118
    const v0, 0x7f070021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_THICKNESS:I

    .line 119
    const/16 v0, 0xc0

    invoke-static {v3, v4, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_COLOR:I

    .line 120
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    .line 123
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_DESTINATION_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 184
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLTriangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    .line 157
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 188
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 189
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v6, 0x7f0201bc

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 190
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v5, 0x4000

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v6, 0x4000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const v6, 0x7f0201bd

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 197
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 199
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000e

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 203
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f02023d

    const v7, 0x7f02023c

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 205
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900dd

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 223
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    .line 224
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x42b4

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    .line 225
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x2

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x4334

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    .line 226
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v10, 0x3

    new-instance v0, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    int-to-float v5, v5

    const/high16 v6, 0x4387

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v0, v9, v10

    .line 228
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_COLOR:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 236
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->VIEWFINDER_DESTINATION_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_VIEWFINDER_DESTINATION_COLOR:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->init()V

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x4000

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f0700a2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->STATUSBAR_HEIGHT:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v5

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v5

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v1, v2

    const v2, 0x7f0700a6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f0700a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f0700a6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 279
    return-void
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 8
    .parameter "detectedDirection"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 646
    monitor-enter p0

    :try_start_0
    const-string v2, "TwGLPanoramaMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLivePreviewLayout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-gtz v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 650
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_2

    .line 652
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 654
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 655
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 656
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 657
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 659
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 660
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 661
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 662
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 663
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 665
    :cond_2
    if-eqz p1, :cond_0

    .line 666
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 667
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    if-eqz v2, :cond_4

    .line 668
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 669
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 670
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 672
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v7

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 690
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 691
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 692
    .restart local v0       #aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 693
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 694
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto/16 :goto_0

    .line 674
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 675
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 676
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 677
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 679
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 680
    .local v1, top:F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_5

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 682
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 684
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v2, :cond_3

    .line 685
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 686
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 607
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 611
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 611
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 619
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_3

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 623
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_4

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 627
    :cond_4
    return-void
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress(I)I
    .locals 3
    .parameter "progress"

    .prologue
    .line 419
    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 426
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public hidePanoramaRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 634
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 634
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_2
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 440
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideCaptureLayout()V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 454
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 460
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_3

    .line 461
    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_3
    if-ne p1, v2, :cond_4

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_4

    .line 468
    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 478
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 484
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    if-gtz v1, :cond_0

    .line 489
    :cond_3
    if-ne p1, v2, :cond_4

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_4

    .line 491
    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 13
    .parameter "data"

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 721
    :cond_1
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Integer;

    .line 722
    .local v9, rotation:[Ljava/lang/Integer;
    invoke-static {p1, v9}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 723
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 724
    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to decode RGBA data for live preview. Data: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :goto_0
    monitor-exit p0

    return-void

    .line 728
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 738
    :cond_3
    :goto_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 739
    .local v2, left:F
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 740
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 741
    .local v4, width:F
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 742
    .local v5, height:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 743
    .local v3, top:F
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 744
    .local v11, topPrevious:F
    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 745
    .local v8, leftFocus:F
    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 772
    .local v10, topFocus:F
    :goto_2
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 777
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ge v0, v1, :cond_b

    .line 778
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 780
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 781
    .local v7, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v8, v10}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 793
    .end local v7           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 711
    .end local v2           #left:F
    .end local v3           #top:F
    .end local v4           #width:F
    .end local v5           #height:F
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #leftFocus:F
    .end local v9           #rotation:[Ljava/lang/Integer;
    .end local v10           #topFocus:F
    .end local v11           #topPrevious:F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 730
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v9       #rotation:[Ljava/lang/Integer;
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_3

    .line 731
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    .line 732
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    .line 733
    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Orientation was not set before the second frame! Forcing orientation to "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    goto/16 :goto_1

    .line 731
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 732
    :cond_7
    const/16 v0, 0x8

    goto :goto_5

    .line 747
    .restart local v2       #left:F
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    if-eqz v0, :cond_9

    .line 748
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 749
    .restart local v5       #height:F
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    add-float/2addr v1, v12

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    add-float/2addr v1, v12

    div-float v4, v0, v1

    .line 750
    .restart local v4       #width:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 751
    .restart local v3       #top:F
    const/4 v11, 0x0

    .line 752
    .restart local v11       #topPrevious:F
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    const/high16 v1, 0x4040

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_PADDING:F

    sub-float v8, v0, v1

    .line 753
    .restart local v8       #leftFocus:F
    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .restart local v10       #topFocus:F
    goto/16 :goto_2

    .line 755
    .end local v3           #top:F
    .end local v4           #width:F
    .end local v5           #height:F
    .end local v8           #leftFocus:F
    .end local v10           #topFocus:F
    .end local v11           #topPrevious:F
    :cond_9
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 756
    .restart local v4       #width:F
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    add-float/2addr v1, v12

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    add-float/2addr v1, v12

    div-float v5, v0, v1

    .line 757
    .restart local v5       #height:F
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v1

    .line 758
    .restart local v3       #top:F
    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 759
    .restart local v8       #leftFocus:F
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    sub-float/2addr v1, v12

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v12, v12

    sub-float/2addr v1, v12

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    add-float/2addr v1, v12

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_PADDING:F

    add-float v10, v0, v1

    .line 760
    .restart local v10       #topFocus:F
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_a

    .line 761
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x4000

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    int-to-float v12, v12

    sub-float/2addr v1, v12

    mul-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    const/high16 v12, 0x3f80

    add-float/2addr v1, v12

    div-float v11, v0, v1

    .restart local v11       #topPrevious:F
    goto/16 :goto_2

    .line 763
    .end local v11           #topPrevious:F
    :cond_a
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v11, v0, v1

    .restart local v11       #topPrevious:F
    goto/16 :goto_2

    .line 787
    :cond_b
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 788
    .restart local v7       #aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v8, v10}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 505
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 324
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 508
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 510
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 517
    packed-switch p1, :pswitch_data_0

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 574
    :goto_0
    if-eqz p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 576
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_1

    .line 577
    if-eq p1, v2, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 578
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    .line 579
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    .line 580
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 589
    :cond_1
    :goto_1
    return-void

    .line 519
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 525
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 531
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 537
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 543
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 549
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 555
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 561
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 582
    :cond_2
    if-eq p1, v3, :cond_3

    if-ne p1, v4, :cond_1

    .line 583
    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    .line 584
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLandscapeStitching:Z

    .line 585
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    goto/16 :goto_1

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public panoramaRectChanged(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v1, p1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v1, v2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 604
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->resetAcquisitionProgress()V

    .line 333
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 334
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    .line 335
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    .line 336
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mDetectedDirection:I

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hidePostCaptureLayout()V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 341
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 352
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 353
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 308
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    .line 309
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->startCancelTimer()V

    .line 369
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 315
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mSideMenuHidden:Z

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 320
    :cond_0
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 599
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 600
    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 379
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 381
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    .line 383
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-lt v0, v3, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideHelpText()V

    .line 389
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 703
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    .line 450
    return-void
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPostCaptureProgress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showPostCaptureLayout()V

    .line 405
    :cond_0
    if-nez p1, :cond_1

    .line 406
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 407
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 408
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewFocus:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 414
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostProgress:I

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 435
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideHelpText()V

    .line 446
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 363
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 372
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    :cond_0
    return-void
.end method
