.class public Lcom/sec/android/glview/TwGLButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
    }
.end annotation


# static fields
.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static HIGHLIGHTTYPE_COLOR:I = 0x0

.field private static HIGHLIGHTTYPE_NONE:I = 0x0

.field private static HIGHLIGHTTYPE_RESOURCE:I = 0x0

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190


# instance fields
.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDim:Z

.field protected mDimBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mHighlight:Lcom/sec/android/glview/TwGLTexture;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mHighlightType:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mIsNinePatchButton:Z

.field private mLastTouchEventAction:I

.field protected mMute:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mNormalId:I

.field protected mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mPressedId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;

.field private setDrawHighlight:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    .line 408
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 410
    if-eqz p6, :cond_0

    .line 411
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 413
    :cond_0
    if-eqz p7, :cond_1

    .line 414
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 415
    :cond_1
    if-eqz p8, :cond_2

    .line 416
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 419
    :cond_2
    if-eqz p9, :cond_3

    .line 420
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 421
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 423
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 424
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 426
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 427
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 430
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 432
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 433
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 434
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 435
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 436
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 437
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 438
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 441
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 442
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 443
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 444
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 445
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 446
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 447
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 448
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 449
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 452
    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 453
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 454
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 455
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 456
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 458
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightColor"
    .parameter "highlightConf"

    .prologue
    .line 524
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 526
    if-eqz p6, :cond_0

    .line 527
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 529
    :cond_0
    if-eqz p7, :cond_1

    .line 530
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 531
    :cond_1
    if-eqz p8, :cond_2

    .line 532
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 535
    :cond_2
    if-eqz p9, :cond_3

    .line 536
    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 537
    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 539
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 540
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 542
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 543
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 545
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 546
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 548
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 549
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 550
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 551
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 552
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 553
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 554
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 557
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 558
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 559
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 560
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 561
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 562
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 563
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 564
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 565
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 568
    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 569
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 570
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 571
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 572
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 573
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 574
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "imagePath"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 207
    if-eqz p6, :cond_0

    .line 208
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 209
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 210
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 216
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 217
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 218
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "image"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 282
    if-eqz p6, :cond_0

    .line 283
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 284
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 285
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 291
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 292
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 293
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 294
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 358
    if-eqz p4, :cond_0

    .line 359
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 360
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 361
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 363
    :cond_0
    if-eqz p5, :cond_1

    .line 364
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 365
    :cond_1
    if-eqz p6, :cond_2

    .line 366
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 367
    :cond_2
    if-eqz p7, :cond_3

    .line 368
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 369
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 370
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 375
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 382
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 383
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 386
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 387
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 388
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 389
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 390
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 391
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 392
    return-void

    .line 372
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 586
    int-to-float v4, p7

    int-to-float v5, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 588
    int-to-float v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 589
    int-to-float v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 593
    if-eqz p4, :cond_0

    .line 594
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 596
    :cond_0
    if-eqz p5, :cond_1

    .line 597
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 599
    :cond_1
    if-eqz p6, :cond_2

    .line 600
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 604
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 607
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 609
    :cond_5
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 610
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 611
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 614
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightColor"
    .parameter "highlightConf"

    .prologue
    .line 472
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 474
    if-eqz p4, :cond_0

    .line 475
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 476
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 477
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 479
    :cond_0
    if-eqz p5, :cond_1

    .line 480
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 481
    :cond_1
    if-eqz p6, :cond_2

    .line 482
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 483
    :cond_2
    if-eqz p7, :cond_3

    .line 484
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 485
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 486
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 491
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 496
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 498
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 502
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 503
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 504
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 505
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 507
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 508
    return-void

    .line 488
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imagePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 180
    if-eqz p4, :cond_0

    .line 181
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 183
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 189
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 191
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 255
    if-eqz p4, :cond_0

    .line 256
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 257
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 258
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 264
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 265
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 266
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 267
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 8
    .parameter "glContext"
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 308
    if-eqz p2, :cond_0

    .line 309
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 310
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 311
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 313
    :cond_0
    if-eqz p3, :cond_1

    .line 314
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 315
    :cond_1
    if-eqz p4, :cond_2

    .line 316
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 317
    :cond_2
    if-eqz p5, :cond_3

    .line 318
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 319
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 320
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 325
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 333
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 336
    :cond_7
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 337
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 338
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 339
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 340
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 341
    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 342
    return-void

    .line 322
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 4
    .parameter "glContext"
    .parameter "imagePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 157
    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 159
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 160
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 165
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 4
    .parameter "glContext"
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 69
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 72
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 87
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 89
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 95
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_NONE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 104
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 107
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 111
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 115
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 230
    if-eqz p2, :cond_0

    .line 231
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 232
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 233
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 239
    :cond_1
    iput-object p2, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 240
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 241
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 242
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 747
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 749
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 753
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 757
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 761
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 763
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 765
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 767
    :cond_4
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 768
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 769
    return-void
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1300
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    if-ne v1, v2, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-object v0

    .line 1303
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eq v1, v2, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1307
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1309
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupGravity(I)V

    .line 1311
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    goto :goto_0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2
    .parameter "gl"

    .prologue
    .line 800
    const/4 v0, 0x1

    .line 801
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    const/4 v0, 0x0

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    const/4 v0, 0x0

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    const/4 v0, 0x0

    .line 813
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    .line 814
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 815
    const/4 v0, 0x0

    .line 817
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    .line 818
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 819
    const/4 v0, 0x0

    .line 822
    :cond_4
    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 1179
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 1181
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 1182
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1183
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1185
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1186
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1190
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1191
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1193
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 1194
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1197
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_5

    .line 1198
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1199
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1201
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 1202
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1205
    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    .line 1206
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 1207
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1209
    :cond_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 1210
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1214
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 1215
    return-void
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    return v0
.end method

.method public mStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getStringName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 885
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 886
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 899
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onAlphaUpdated()V

    .line 901
    :cond_4
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 856
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 859
    :cond_1
    return-void

    .line 832
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v0, :cond_4

    .line 833
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 840
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_6

    .line 841
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mLastTouchEventAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 842
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 845
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-nez v0, :cond_6

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 850
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onFocusStatusChanged(I)V
    .locals 1
    .parameter "focusStatus"

    .prologue
    .line 1011
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1014
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 973
    sparse-switch p1, :sswitch_data_0

    .line 985
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 976
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-nez v1, :cond_1

    .line 979
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 980
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 981
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 973
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 990
    sparse-switch p1, :sswitch_data_0

    .line 1006
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 993
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v1, :cond_1

    .line 994
    const/4 v1, 0x1

    goto :goto_0

    .line 996
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 997
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 998
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v1, :cond_2

    .line 999
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1000
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1002
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v1, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 990
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 866
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 867
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 876
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 877
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 880
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdated()V

    .line 882
    :cond_4
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 789
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 792
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1284
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1286
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1287
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1289
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const-wide/16 v7, 0x190

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mLastTouchEventAction:I

    .line 914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 915
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v3, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v2

    .line 919
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 920
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 922
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v3, :cond_7

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 924
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 925
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v3, :cond_3

    .line 926
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 927
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_3

    .line 928
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 929
    .local v1, anim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 930
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3, v1, v6}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 931
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 932
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 935
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v3, :cond_6

    .line 936
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v3, :cond_4

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 938
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 940
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 941
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 942
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 945
    :cond_5
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v3, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 947
    :cond_6
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v3, v6}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    goto/16 :goto_0

    .line 951
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 953
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 954
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v3, :cond_8

    .line 955
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_8

    .line 956
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 957
    .restart local v1       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 958
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3, v1, v6}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 959
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 960
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 963
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v3, :cond_0

    .line 964
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v3, v6}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    goto/16 :goto_0

    .line 968
    :cond_9
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setButtonResources(IIII)V
    .locals 9
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "npHighlightId"

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    .line 1025
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1026
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1027
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1029
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1031
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    .line 1032
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1033
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1035
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1037
    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    .line 1038
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1039
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1041
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1043
    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    if-eq v0, v1, :cond_8

    .line 1044
    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1045
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_RESOURCE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1046
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1047
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1048
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1051
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1052
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1053
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1055
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1056
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1057
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1059
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1060
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1061
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1063
    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 1064
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1066
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_f

    .line 1067
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 1068
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1069
    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1070
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1077
    :cond_e
    :goto_0
    return-void

    .line 1072
    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 1073
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1074
    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1075
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .parameter "normalId"
    .parameter "pressedId"
    .parameter "dimmedId"
    .parameter "highlightColor"
    .parameter "highlightConf"

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/4 v2, 0x0

    .line 1088
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1089
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1090
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1092
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1094
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_3

    .line 1095
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1096
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1098
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1100
    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_5

    .line 1101
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1102
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1103
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1104
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1106
    :cond_5
    if-eqz p4, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-ne v0, p4, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    sget v1, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    if-eq v0, v1, :cond_8

    .line 1107
    :cond_6
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1108
    sget v0, Lcom/sec/android/glview/TwGLButton;->HIGHLIGHTTYPE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1109
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1110
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1111
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1114
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1115
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1116
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1118
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1119
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1120
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1122
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1123
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1124
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1126
    :cond_b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 1127
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1129
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_f

    .line 1130
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 1131
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1132
    :cond_d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1133
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1140
    :cond_e
    :goto_0
    return-void

    .line 1135
    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 1136
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1137
    :cond_10
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_e

    .line 1138
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3
    .parameter "dim"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3e4ccccd

    .line 720
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-ne v0, p1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    .line 723
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDim:Z

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 731
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 732
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 714
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 904
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 905
    return-void
.end method

.method public setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 145
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 1264
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 1266
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1270
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1292
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1293
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1150
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1151
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1153
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v2, :cond_0

    .line 1154
    const/4 v2, 0x0

    .line 1169
    :goto_0
    return v2

    .line 1156
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1157
    .local v1, buttonImageWidth:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1159
    .local v0, buttonImageHeight:F
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 1161
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1162
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1165
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1166
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1169
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 1219
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1220
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1221
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1223
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1224
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1234
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1236
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1237
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 1260
    :cond_4
    :goto_0
    return-void

    .line 1242
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1243
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1245
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1246
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1248
    :cond_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1249
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1251
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1252
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1254
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1255
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1257
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 634
    if-eqz p1, :cond_0

    .line 635
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 636
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 639
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 622
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 623
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 626
    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 647
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 648
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 651
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 696
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 684
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 705
    return-void
.end method
