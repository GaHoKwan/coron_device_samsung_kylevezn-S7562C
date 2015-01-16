.class public Lcom/sec/android/touchwiz/widget/TwEndEffectController;
.super Ljava/lang/Object;
.source "TwEndEffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;
    }
.end annotation


# static fields
.field public static final BOUNCE_EXTENT_COEF:F = 0.3f

.field private static final BOUNCE_VIEW_ALPHA:I = 0xff

.field private static final BOUNCE_VIEW_SHADOW_GRADIENT_ALPHA:I = 0x80

.field private static final DEFAULT_BOUNCE_VIEW_FADING_EDGE_LENGTH:I = 0xe

.field private static final DELAY_AFTER_SHAKE_ANIM:I = 0x190

.field public static final FADING_EDGE_COEF:F = 0.333f

.field private static final TAG:Ljava/lang/String; = "TwEndEffectController"

.field private static final TEXT_SHAKE_ANIM_DURATION:I = 0x320

.field public static final TEXT_SHAKE_ANIM_IDLE:I = 0x0

.field public static final TEXT_SHAKE_ANIM_ONGOING:I = 0x1

.field public static final TEXT_SHAKING_TRIGGER_COEF:F = 0.3f


# instance fields
.field private final BACKGROUND_HOLO_DARK:I

.field private final BACKGROUND_HOLO_LIGHT:I

.field private BOUNCE_VIEW_BOTTOM_PADDING:I

.field private BOUNCE_VIEW_EDGE_HEIGHT:I

.field private BOUNCE_VIEW_HEIGHT_NO_CHILDREN:I

.field private BOUNCE_VIEW_TOP_PADDING:I

.field private TEXT_SHAKE_RANGE:I

.field private mAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private mBounceViewBackgroundAlpha:I

.field private mBounceViewBottom:Landroid/widget/FrameLayout;

.field private mBounceViewFadingEdgeLength:I

.field private mBounceViewMargin:I

.field private mBounceViewTop:Landroid/widget/FrameLayout;

.field private mBounceViewsSupplied:Z

.field private mCurrentAnimationValue:F

.field private mFloatShakeEvaluator:Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;

.field private mParentView:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mShakeAnimation:Landroid/animation/ValueAnimator;

.field private mTextShakeAnimStatus:I

.field private matrixForFading:Landroid/graphics/Matrix;

.field private paintForFading:Landroid/graphics/Paint;

.field private shaderForFading:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 8
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;-><init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mFloatShakeEvaluator:Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;

    .line 73
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 77
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mCurrentAnimationValue:F

    .line 79
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I

    .line 86
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    .line 92
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewsSupplied:Z

    .line 94
    const/16 v0, 0x6b

    const/16 v2, 0x7e

    const/16 v3, 0x8d

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BACKGROUND_HOLO_DARK:I

    .line 96
    const/16 v0, 0xf6

    const/16 v2, 0xfa

    const/16 v3, 0xfe

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BACKGROUND_HOLO_LIGHT:I

    .line 99
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mParentView:Landroid/view/View;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->paintForFading:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->matrixForFading:Landroid/graphics/Matrix;

    .line 103
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/16 v2, 0x80

    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->shaderForFading:Landroid/graphics/Shader;

    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->paintForFading:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->shaderForFading:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewFadingEdgeLength:I

    .line 108
    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBackgroundAlpha:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwEndEffectController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwEndEffectController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mCurrentAnimationValue:F

    return p1
.end method

.method private configureBounceViewInnerLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewsSupplied:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_HEIGHT_NO_CHILDREN:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_HEIGHT_NO_CHILDREN:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private convertDipToPx(I)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 439
    const/4 v1, 0x0

    .line 443
    :goto_0
    return v1

    .line 441
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, p1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 443
    .local v0, px:F
    float-to-int v1, v0

    goto :goto_0
.end method


# virtual methods
.method public areBounceViewsReady()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelTextShakeAnimation()V
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "TwEndEffectController"

    const-string v1, "cancel animation()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mCurrentAnimationValue:F

    .line 279
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 1
    .parameter "canvas"
    .parameter "top"

    .prologue
    .line 430
    if-eqz p2, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBounceViewBgAlpha()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBackgroundAlpha:I

    return v0
.end method

.method public getBounceViewFadingEdgeLength()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewFadingEdgeLength:I

    return v0
.end method

.method public getBounceViewHeight(Z)I
    .locals 1
    .parameter "top"

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getBounceViewMargin()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    return v0
.end method

.method public getCurrentAnimationValue()F
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewsSupplied:Z

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mCurrentAnimationValue:F

    goto :goto_0
.end method

.method public getFadingEdgePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->paintForFading:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getFadingEdgePaint(FFFF)Landroid/graphics/Paint;
    .locals 2
    .parameter "scaleY"
    .parameter "rotateDegree"
    .parameter "translateX"
    .parameter "translateY"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->matrixForFading:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->matrixForFading:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 355
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->matrixForFading:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 356
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->shaderForFading:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->matrixForFading:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->paintForFading:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getbounceViewWidth(Z)I
    .locals 1
    .parameter "top"

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public initBounceView(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v6, 0x109002e

    const/16 v7, 0x10

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 115
    .local v2, mInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    .line 117
    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    .line 119
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 121
    .local v4, tv:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 122
    .local v3, theme:Landroid/content/res/Resources$Theme;
    const v5, 0x1010031

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    .line 129
    .local v1, backgroundColorResourceId:I
    const/4 v0, 0x0

    .line 130
    .local v0, backgroundColor:I
    sparse-switch v1, :sswitch_data_0

    .line 142
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BACKGROUND_HOLO_DARK:I

    .line 143
    const-string v5, "TwEndEffectController"

    const-string v6, "initBounceView() unknown theme!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mResources:Landroid/content/res/Resources;

    .line 162
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->convertDipToPx(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->TEXT_SHAKE_RANGE:I

    .line 164
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->convertDipToPx(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_EDGE_HEIGHT:I

    .line 166
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->convertDipToPx(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_HEIGHT_NO_CHILDREN:I

    .line 167
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->convertDipToPx(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    .line 168
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->convertDipToPx(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    .line 170
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->configureBounceViewInnerLayout()V

    .line 171
    return-void

    .line 133
    :sswitch_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BACKGROUND_HOLO_DARK:I

    .line 134
    const-string v5, "TwEndEffectController"

    const-string v6, "initBounceView() HOLO_DARK theme!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :sswitch_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->BACKGROUND_HOLO_LIGHT:I

    .line 139
    const-string v5, "TwEndEffectController"

    const-string v6, "initBounceView() HOLO_LIGHT theme!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x106000e -> :sswitch_0
        0x106000f -> :sswitch_1
        0x1060047 -> :sswitch_0
        0x1060048 -> :sswitch_1
    .end sparse-switch
.end method

.method public layoutBounceViews(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 195
    .local v0, measuredHeight:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 196
    .local v1, measuredWidth:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    add-int/2addr v3, p1

    add-int v4, p1, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    sub-int/2addr v4, v5

    add-int v5, p2, v0

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 199
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 201
    .restart local v0       #measuredHeight:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 202
    .restart local v1       #measuredWidth:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    add-int/2addr v3, p1

    add-int v4, p1, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    sub-int/2addr v4, v5

    add-int v5, p2, v0

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 205
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_1
    return-void
.end method

.method public measureBounceViews(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 180
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 183
    .local v0, modifiedHeightMeasureSpec:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 189
    :cond_1
    return-void
.end method

.method public setBounceViewBgAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 336
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBackgroundAlpha:I

    .line 337
    return-void
.end method

.method public setBounceViewFadingEdgeLength(I)V
    .locals 0
    .parameter "fadingEdgeLength"

    .prologue
    .line 348
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewFadingEdgeLength:I

    .line 349
    return-void
.end method

.method public setBounceViewMargin(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 319
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewMargin:I

    .line 320
    return-void
.end method

.method public setBounceViews(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .parameter "topBounceView"
    .parameter "bottomBounceView"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 365
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewsSupplied:Z

    .line 366
    if-eqz p1, :cond_2

    move v1, v2

    .line 367
    .local v1, topViewExists:Z
    :goto_0
    if-eqz p2, :cond_3

    move v0, v2

    .line 368
    .local v0, bottomViewExists:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 369
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 371
    :cond_0
    if-eqz v0, :cond_1

    .line 372
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 375
    :cond_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 376
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->configureBounceViewInnerLayout()V

    .line 379
    :goto_2
    return v2

    .end local v0           #bottomViewExists:Z
    .end local v1           #topViewExists:Z
    :cond_2
    move v1, v3

    .line 366
    goto :goto_0

    .restart local v1       #topViewExists:Z
    :cond_3
    move v0, v3

    .line 367
    goto :goto_1

    .restart local v0       #bottomViewExists:Z
    :cond_4
    move v2, v3

    .line 379
    goto :goto_2
.end method

.method public startTextShakingAnimation(Z)V
    .locals 9
    .parameter "top"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I

    if-ne v3, v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewsSupplied:Z

    if-eqz v3, :cond_4

    .line 212
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 214
    .local v0, hasChild:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 217
    if-eqz p1, :cond_3

    .line 218
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "translationY"

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mFloatShakeEvaluator:Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->TEXT_SHAKE_RANGE:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    .line 230
    .end local v0           #hasChild:Z
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwEndEffectController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController$2;-><init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 212
    goto :goto_1

    .line 221
    .restart local v0       #hasChild:Z
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "translationY"

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mFloatShakeEvaluator:Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->TEXT_SHAKE_RANGE:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 226
    .end local v0           #hasChild:Z
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mFloatShakeEvaluator:Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->TEXT_SHAKE_RANGE:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    goto :goto_2
.end method
