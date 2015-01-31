.class public Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;
    }
.end annotation


# static fields
.field private static final ADJUST_CONTRAST_MENU_TYPE:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final ADJUST_CONTRAST_NUM_OF_STEP:I = 0x0

.field private static final ADJUST_SATURATION_MENU_TYPE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final ADJUST_SATURATION_NUM_OF_STEP:I = 0x0

.field private static final EXPOSURE_MENU_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_CENTERLINE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_CENTERLINE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_NUM_OF_STEP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_OFFSET:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDERBAR_POX_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDERBAR_POX_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GAUGE_BALL_SELECT_AREA_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GAUGE_BALL_SELECT_AREA_WIDTH:F = 0.0f

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MAX_RATIO:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MENU_POS_Y:I = 0x0

.field private static final ZOOM_MENU_TYPE:I = 0x2

.field private static final ZOOM_MENU_WIDTH:I

.field private static final ZOOM_NUM_OF_STEP:I

.field private static final ZOOM_TEXT_HEIGHT:I

.field private static final ZOOM_TEXT_WIDTH:I

.field private static final ZOOM_VALUE_SLIDERBAR_POX_X:I

.field private static final ZOOM_VALUE_SLIDERBAR_POX_Y:I

.field private static final ZOOM_VALUE_SLIDER_HEIGHT:I

.field private static final ZOOM_VALUE_SLIDER_POS_X:I

.field private static final ZOOM_VALUE_SLIDER_POS_Y:I

.field private static final ZOOM_VALUE_SLIDER_WIDTH:I

.field private static final ZOOM_VALUE_TEXT_FONT_SIZE:I


# instance fields
.field private mCenterLine:Lcom/sec/android/glview/TwGLImage;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMinusButton:Lcom/sec/android/glview/TwGLButton;

.field protected mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

.field protected mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

.field mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

.field private mPlusButton:Lcom/sec/android/glview/TwGLButton;

.field private mSlider:Lcom/sec/android/glview/TwGLSlider;

.field private mType:I

.field private mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

.field private mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f070233

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_X:I

    .line 55
    const v0, 0x7f070234

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    .line 56
    const v0, 0x7f070235

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_WIDTH:I

    .line 57
    const v0, 0x7f070236

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_HEIGHT:I

    .line 58
    const v0, 0x7f070237

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    .line 59
    const v0, 0x7f070238

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    .line 60
    const v0, 0x7f070239

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I

    .line 61
    const v0, 0x7f07023a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I

    .line 62
    const v0, 0x7f07023b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_X:I

    .line 63
    const v0, 0x7f07023c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_Y:I

    .line 64
    const v0, 0x7f07023d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    .line 65
    const v0, 0x7f07023e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    .line 66
    const v0, 0x7f07023f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I

    .line 67
    const v0, 0x7f070240

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I

    .line 68
    const v0, 0x7f070241

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_X:I

    .line 69
    const v0, 0x7f070242

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_Y:I

    .line 70
    const v0, 0x7f070243

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_WIDTH:I

    .line 71
    const v0, 0x7f070244

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_HEIGHT:I

    .line 72
    const v0, 0x7f070246

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_X:I

    .line 73
    const v0, 0x7f070247

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_Y:I

    .line 74
    const v0, 0x7f080009

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    .line 75
    const v0, 0x7f070248

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    .line 76
    const v0, 0x7f070249

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_X:I

    .line 77
    const v0, 0x7f07024a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_Y:I

    .line 78
    const v0, 0x7f07024b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_WIDTH:I

    .line 79
    const v0, 0x7f07024c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_HEIGHT:I

    .line 80
    const v0, 0x7f07024d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_WIDTH:I

    .line 81
    const v0, 0x7f07024e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    .line 82
    const v0, 0x7f07024f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_X:I

    .line 83
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_Y:I

    .line 84
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_WIDTH:I

    .line 85
    const v0, 0x7f070252

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_HEIGHT:I

    .line 86
    const v0, 0x7f070253

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_X:I

    .line 87
    const v0, 0x7f070254

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_Y:I

    .line 88
    const v0, 0x7f080020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    .line 89
    const v0, 0x7f08000a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    .line 90
    const v0, 0x7f08000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MAX_RATIO:I

    .line 91
    const v0, 0x7f070255

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    .line 92
    const v0, 0x7f070256

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    .line 93
    const v0, 0x7f08000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ADJUST_CONTRAST_NUM_OF_STEP:I

    .line 94
    const v0, 0x7f08000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ADJUST_SATURATION_NUM_OF_STEP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 14
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 173
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 106
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    .line 176
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v1, :cond_0

    .line 387
    :goto_1
    return-void

    .line 179
    :sswitch_0
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 181
    .local v11, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 182
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 186
    new-instance v1, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 188
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0201ce

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    .line 190
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 191
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0901a3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 196
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xe11

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 197
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0901a4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe11

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f0201cd

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setSliderBar(IFF)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020030

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setGauge(IFF)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBackground(I)Z

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0

    .line 234
    .end local v11           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :sswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 235
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 237
    new-instance v1, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 239
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    int-to-float v6, v6

    const-string v7, "x1"

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 244
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    int-to-float v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MAX_RATIO:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f0201d4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setSliderBar(IFF)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020030

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setGauge(IFF)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0201d3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBackground(I)Z

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0

    .line 267
    :sswitch_2
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 269
    .local v12, res_ac:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 270
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 274
    new-instance v1, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ADJUST_CONTRAST_NUM_OF_STEP:I

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 276
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0201ce

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    .line 278
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0x1450

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 279
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 283
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0x1451

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 284
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x1450

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x1451

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f0201cb

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setSliderBar(IFF)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020030

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setGauge(IFF)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBackground(I)Z

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0

    .line 321
    .end local v12           #res_ac:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :sswitch_3
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v13

    .line 323
    .local v13, res_as:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 324
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 328
    new-instance v1, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ADJUST_SATURATION_NUM_OF_STEP:I

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 330
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0201ce

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    .line 332
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0x14b4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v13

    .line 333
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 337
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0x14b5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v13

    .line 338
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v13, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x14b4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x14b5

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f0201d1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setSliderBar(IFF)V

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020030

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setGauge(IFF)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBackground(I)Z

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0

    .line 379
    .end local v13           #res_as:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto/16 :goto_1

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4b -> :sswitch_3
        0xbc1 -> :sswitch_0
        0xbe0 -> :sswitch_2
        0xbe1 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLSlider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    return v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 643
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 636
    :cond_0
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    .line 517
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    :goto_0
    return v1

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, value:I
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 545
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_2

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    :cond_2
    move v1, v2

    .line 555
    goto :goto_0

    .line 557
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_3

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 559
    if-lez v0, :cond_3

    .line 560
    add-int/lit8 v0, v0, -0x1

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 564
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_4

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    :cond_4
    move v1, v2

    .line 567
    goto :goto_0

    .line 569
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_5

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 571
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 572
    add-int/lit8 v0, v0, 0x1

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 576
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    if-eqz v1, :cond_6

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;->onAdjustContrastMenuSelect(I)V

    :cond_6
    move v1, v2

    .line 579
    goto/16 :goto_0

    .line 581
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_7

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 583
    if-lez v0, :cond_7

    .line 584
    add-int/lit8 v0, v0, -0x1

    .line 585
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 588
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    if-eqz v1, :cond_8

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;->onAdjustContrastMenuSelect(I)V

    :cond_8
    move v1, v2

    .line 591
    goto/16 :goto_0

    .line 593
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_9

    .line 594
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 595
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_9

    .line 596
    add-int/lit8 v0, v0, 0x1

    .line 597
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 600
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    if-eqz v1, :cond_a

    .line 601
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;->onAdjustSaturationMenuSelect(I)V

    :cond_a
    move v1, v2

    .line 603
    goto/16 :goto_0

    .line 605
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_b

    .line 606
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 607
    if-lez v0, :cond_b

    .line 608
    add-int/lit8 v0, v0, -0x1

    .line 609
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 612
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    if-eqz v1, :cond_c

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;->onAdjustSaturationMenuSelect(I)V

    :cond_c
    move v1, v2

    .line 615
    goto/16 :goto_0

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        0xe10 -> :sswitch_0
        0xe11 -> :sswitch_1
        0x1450 -> :sswitch_2
        0x1451 -> :sswitch_3
        0x14b4 -> :sswitch_4
        0x14b5 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 534
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, value:I
    sparse-switch p1, :sswitch_data_0

    .line 699
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 661
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 663
    if-lez v0, :cond_1

    .line 664
    add-int/lit8 v0, v0, -0x1

    .line 665
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v2, :cond_3

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    goto :goto_0

    .line 672
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    if-eqz v2, :cond_4

    .line 673
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;->onAdjustContrastMenuSelect(I)V

    goto :goto_0

    .line 674
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    if-eqz v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;->onAdjustSaturationMenuSelect(I)V

    goto :goto_0

    .line 681
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v2, :cond_5

    .line 682
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 683
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 684
    add-int/lit8 v0, v0, 0x1

    .line 685
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 688
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v2, :cond_6

    .line 689
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    goto :goto_0

    .line 690
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v2, :cond_7

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    goto :goto_0

    .line 692
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    if-eqz v2, :cond_8

    .line 693
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;->onAdjustContrastMenuSelect(I)V

    goto :goto_0

    .line 694
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;->onAdjustSaturationMenuSelect(I)V

    goto/16 :goto_0

    .line 657
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 647
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 713
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 407
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->refreshMenuPosition()V

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 413
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    sparse-switch v1, :sswitch_data_0

    .line 469
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, value:I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 512
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 513
    return-void

    .line 416
    .end local v0           #value:I
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 428
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$6;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 441
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 454
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$8;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 474
    .restart local v0       #value:I
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v0

    .line 479
    :goto_2
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exposure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    goto :goto_1

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v0

    goto :goto_2

    .line 483
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v0

    .line 488
    :goto_3
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    goto/16 :goto_1

    .line 486
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v0

    goto :goto_3

    .line 492
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAdjustContrast()I

    move-result v0

    .line 497
    :goto_4
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust contrast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    goto/16 :goto_1

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAdjustContrast()I

    move-result v0

    goto :goto_4

    .line 501
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAdjustSaturation()I

    move-result v0

    .line 506
    :goto_5
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust saturation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    goto/16 :goto_1

    .line 504
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAdjustSaturation()I

    move-result v0

    goto :goto_5

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4b -> :sswitch_3
        0xbc1 -> :sswitch_0
        0xbe0 -> :sswitch_2
        0xbe1 -> :sswitch_3
    .end sparse-switch

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return v1

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public refreshMenuPosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, move:F
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 718
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v1, v1

    const v2, 0x7f0700c5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 729
    :cond_2
    return-void
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    return-void
.end method

.method public setOnAdjustContrastChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    .line 399
    return-void
.end method

.method public setOnAdjustSaturationChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    .line 403
    return-void
.end method

.method public setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    .line 391
    return-void
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    .line 395
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method
