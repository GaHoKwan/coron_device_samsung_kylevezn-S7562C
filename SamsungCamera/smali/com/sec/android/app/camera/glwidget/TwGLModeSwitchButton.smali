.class public Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CELL_PADDING_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final CELL_PADDING_WIDTH:F = 0.0f

.field public static final MODE_CAMCORDER:I = 0x1

.field public static final MODE_CAMERA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SELECTED_IMAGE_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BALL_MAX_MOVEMENT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BALL_SELECT_AREA_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BALL_SELECT_AREA_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCH_BG_IMAGE_POS_X:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "TwGLModeSwitchButton"

.field public static final TOUCH_PADDING:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonLocked:Z

.field private mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

.field private mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

.field private mMoveSum:I

.field private mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

.field private mStartY:I

.field private mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

.field private mSwitchBall:Lcom/sec/android/glview/TwGLImage;

.field private mSwitchBallPosTop:I

.field private mSwitchBallPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f070140

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BG_IMAGE_POS_X:F

    .line 49
    const v0, 0x7f070141

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SELECTED_IMAGE_POS_X:F

    .line 50
    const v0, 0x7f070142

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_WIDTH:F

    .line 51
    const v0, 0x7f070143

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_HEIGHT:F

    .line 52
    const v0, 0x7f070144

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    .line 53
    const v0, 0x7f070147

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    .line 54
    const v0, 0x7f070148

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_WIDTH:I

    .line 55
    const v0, 0x7f070149

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V
    .locals 2
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "cameramode"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 57
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    .line 59
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    .line 61
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->init()V

    .line 83
    if-nez p4, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    .line 86
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 121
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SELECTED_IMAGE_POS_X:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    const v4, 0x7f020096

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    .line 125
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BG_IMAGE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    const v4, 0x7f020076

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    .line 129
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SELECTED_IMAGE_POS_X:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    const v4, 0x7f020093

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    .line 133
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    int-to-float v5, v5

    const v7, 0x7f020091

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->CELL_PADDING_HEIGHT:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setDragSensitivity(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setDragVibration(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setDragSensitivity(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setDragVibration(Z)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 98
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lockButton(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    .line 103
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return mButtonLocked is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_6

    .line 290
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 291
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_7

    .line 292
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 294
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    .line 295
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 296
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 297
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 299
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 308
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return mButtonLocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    const-string v1, "TwGLModeSwitchButton"

    const-string v2, "TTS enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 334
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 340
    :cond_5
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_7

    .line 341
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 361
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 336
    .end local v0           #t:Ljava/lang/Thread;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 337
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 362
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_0

    .line 363
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 383
    .restart local v0       #t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return mButtonLocked is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "TwGLModeSwitchButton"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 194
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_6

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 222
    :goto_0
    return v0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    const-string v0, "TwGLModeSwitchButton"

    const-string v2, "return isStartPreview.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    const-string v0, "TwGLModeSwitchButton"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 205
    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    const-string v0, "TwGLModeSwitchButton"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 211
    goto :goto_0

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    :goto_1
    move v0, v1

    .line 220
    goto :goto_0

    .line 218
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    goto :goto_1

    .line 222
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 226
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 389
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v3

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camcorder;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camcorder;

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 426
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 427
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    if-gez v0, :cond_7

    .line 428
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 432
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 433
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    goto :goto_0

    .line 429
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    if-lt v0, v1, :cond_6

    .line 430
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    goto :goto_1

    .line 437
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosTop:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_SELECT_AREA_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 439
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mMoveSum:I

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mStartY:I

    goto/16 :goto_0

    .line 443
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    if-gtz v0, :cond_8

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    goto/16 :goto_0

    .line 447
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    if-lt v0, v1, :cond_0

    .line 448
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCamcorderSelected()V
    .locals 3

    .prologue
    .line 181
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->SWITCH_BALL_MAX_MOVEMENT:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public setCameraSelected()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBallPosition:I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public setHoverPopupGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 473
    :cond_0
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 460
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 465
    :cond_0
    return-void
.end method

.method public setModeButtonDimmed(Z)V
    .locals 3
    .parameter "dimmed"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mButtonLocked:Z

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCameraSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mCamcorderSelectedImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->TOUCH_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    goto :goto_0
.end method

.method public setOnModeChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    .line 76
    return-void
.end method
