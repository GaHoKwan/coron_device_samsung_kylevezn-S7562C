.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;
    }
.end annotation


# static fields
.field private static final CLOSE_SWEEP_ACTION_BAR_DELAY_TIME:J = 0x190L

.field private static final CONTEXT_URGENT_AUTO_CLOSE_ANIMATION_DURATION:I = 0x190

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x258

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final ITEMS_UNCLICKABLE_DURATION:I = 0x190

.field private static final SWEEP_ADJUSTMENT_MAX_VALUE:I = 0x23a

.field private static final SWEEP_FIRE_THRESHOLD_VALUE:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwSweepActionListView"

.field private static final VELOCITY_UNITS:I = 0x1f4


# instance fields
.field private final DEBUGABLE:Z

.field private final DEBUGABLE_COSINE_VALUE:Z

.field private SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

.field private actionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field private bActionUp:Z

.field private bFlickV:Z

.field private bKeyPressed:Z

.field private bKeyReleased:Z

.field private bTouchEvent:Z

.field private curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

.field private curIndex:I

.field private decorInit:Z

.field private isSweep:Z

.field private listLeft:I

.field private listTop:I

.field private mActionUpX:F

.field private mBlockTouchEvents:Z

.field private mContext:Landroid/content/Context;

.field mDecorLayout:Landroid/widget/FrameLayout;

.field private mFling:Z

.field private mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepAreaRestrictionEnabled:Z

.field private mSweepBoundaryStart:F

.field private mSweepDirection:I

.field private mSweepLeftDistance:F

.field private mSweepPrevPosX:F

.field private mSweepPrevPosY:F

.field private mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

.field private mSweepRightDistance:F

.field private mTopPositionSave:I

.field private mTouchPointX:F

.field private mTouchPointY:F

.field private mTouchSlop:I

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWithinSweepAllowedArea:Z

.field previousMoveDistanceX:F

.field previousMoveDistanceY:F

.field private sweepContainerView:Landroid/widget/RelativeLayout;

.field private tempRect:Landroid/graphics/Rect;

.field private transformation:Landroid/view/animation/Transformation;

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 177
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "c"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE:Z

    .line 58
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE_COSINE_VALUE:Z

    .line 92
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 94
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 96
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    .line 102
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    .line 110
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 119
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 120
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 130
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 132
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    .line 136
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 144
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 150
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 152
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 154
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 156
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 158
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 160
    const v1, 0x3e4ccccd

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    .line 168
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    .line 169
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    .line 184
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    .line 185
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 187
    .local v0, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    .line 189
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 190
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setDrawSelectorOnTop(Z)V

    .line 194
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z
    .locals 1
    .parameter "actionView"
    .parameter "animation"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 358
    const/4 v0, 0x2

    iput v0, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 360
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 362
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSweepContainerView(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 207
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 216
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 222
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private decorViewInitialize()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 418
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 420
    .local v1, rocation:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 422
    aget v2, v1, v5

    .line 423
    .local v2, top:I
    aget v0, v1, v4

    .line 425
    .local v0, left:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 427
    aget v3, v1, v5

    sub-int v3, v2, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 428
    aget v3, v1, v4

    sub-int v3, v0, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-lez v3, :cond_0

    .line 431
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 435
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 437
    return-void
.end method

.method private getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 4
    .parameter "index"

    .prologue
    .line 399
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 401
    .local v2, len:I
    const/4 v0, 0x0

    .line 403
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 405
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 407
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    if-ne v3, p1, :cond_0

    move-object v3, v0

    .line 412
    :goto_1
    return-object v3

    .line 403
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCurrentListItem(I)Landroid/view/View;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v0, p1, v1

    .line 1462
    .local v0, lActChildPos:I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 2
    .parameter "c"
    .parameter "actionBarView"
    .parameter "position"

    .prologue
    .line 376
    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v1, :cond_2

    .line 378
    :cond_0
    const/4 v0, 0x0

    .line 393
    :cond_1
    :goto_0
    return-object v0

    .line 380
    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 382
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-nez v0, :cond_1

    .line 386
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V

    .line 391
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDecorViewLayerType(Landroid/widget/FrameLayout;)I
    .locals 1
    .parameter "decorlayout"

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method private initSweepDistanceVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x4080

    .line 1320
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 1321
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 1322
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 1323
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 1324
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 1325
    return-void
.end method

.method private isListScrollable()Z
    .locals 2

    .prologue
    .line 1316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinSweepAllowedArea(F)Z
    .locals 4
    .parameter "touchPointX"

    .prologue
    .line 1512
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    add-float v0, v2, v3

    .line 1513
    .local v0, leftBoundary:F
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 1514
    .local v1, rightBoundary:F
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resizeTempRect()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 442
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 443
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 444
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iget v2, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 446
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 456
    :cond_1
    return-void
.end method

.method private setItemsUnclickableForShortDuration()V
    .locals 3

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 510
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    return-void
.end method

.method private setPressedFalse()V
    .locals 4

    .prologue
    .line 914
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 917
    .local v2, num:I
    const/4 v0, 0x0

    .line 919
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 921
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 919
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    :cond_1
    return-void
.end method

.method private sweepPatternIsIndeedFling(F)Z
    .locals 7
    .parameter "velocity"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1352
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    cmpg-float v4, p1, v6

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    .line 1369
    :cond_1
    :goto_0
    return v2

    .line 1356
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v0, v4, 0x2

    .line 1357
    .local v0, minimalDistanceThreshold:I
    cmpl-float v4, p1, v6

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    :cond_3
    cmpg-float v4, p1, v6

    if-gez v4, :cond_5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    :cond_4
    move v2, v3

    .line 1359
    goto :goto_0

    .line 1363
    :cond_5
    cmpl-float v4, p1, v6

    if-lez v4, :cond_6

    .line 1364
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    div-float v1, v4, v5

    .line 1367
    .local v1, oppositeDirectionDistRatio:F
    :goto_1
    const-string v4, "SweepFling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oppositeDirectionDistRatio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 1366
    .end local v1           #oppositeDirectionDistRatio:F
    :cond_6
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    div-float v1, v4, v5

    .restart local v1       #oppositeDirectionDistRatio:F
    goto :goto_1
.end method

.method private trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    .line 1328
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1329
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1331
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-nez v0, :cond_0

    .line 1333
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 1335
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 1336
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 1346
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 1347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 1348
    return-void

    .line 1337
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1338
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-ne v0, v3, :cond_3

    .line 1340
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 1342
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 1343
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    goto :goto_0
.end method


# virtual methods
.method public allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F
    .locals 3
    .parameter "sabi"
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 936
    move v0, p2

    .line 938
    .local v0, allowDistance:F
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v2, :cond_0

    .line 939
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    .line 940
    :cond_0
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v2, :cond_1

    .line 941
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    .line 943
    :cond_1
    return v0
.end method

.method public closeAllActionBar(Z)Z
    .locals 6
    .parameter "animated"

    .prologue
    .line 279
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 282
    .local v0, cloneArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 283
    .local v2, len:I
    const/4 v3, 0x0

    .line 285
    .local v3, retVal:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const/4 v3, 0x1

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    .line 293
    const-string v4, "TwSweepActionListView"

    const-string v5, "closeAllActionBar call  sweepActionViewRemove"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 295
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 296
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 305
    :cond_2
    return v3
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    const/4 v0, 0x0

    .line 1063
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1067
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 1069
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1072
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1074
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 678
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 692
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-nez v0, :cond_1

    .line 693
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 696
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-eqz v0, :cond_2

    .line 697
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 701
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-eqz v0, :cond_3

    .line 702
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 704
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 706
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 620
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 607
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawTime"

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1376
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1377
    .local v2, index:I
    const/4 v3, 0x0

    .line 1379
    .local v3, mTransX:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 1381
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    .line 1383
    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1385
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1387
    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v4, :pswitch_data_0

    .line 1417
    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v2           #index:I
    .end local v3           #mTransX:F
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    return v4

    .line 1391
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .restart local v1       #anim:Landroid/view/animation/Animation;
    .restart local v2       #index:I
    .restart local v3       #mTransX:F
    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setTranslate()V

    goto :goto_0

    .line 1397
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1399
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1401
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v3, v4

    .line 1403
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V
    invoke-static {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1405
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 1406
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    .line 1481
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 1483
    .local v1, cutSelector:Z
    :goto_0
    const/4 v0, -0x1

    .line 1484
    .local v0, currentPosition:I
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1485
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 1490
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    if-eqz v3, :cond_0

    if-eq v0, v5, :cond_0

    .line 1491
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v3

    and-int/2addr v1, v3

    .line 1494
    :cond_0
    if-ne v0, v5, :cond_1

    .line 1495
    const/4 v1, 0x0

    .line 1498
    :cond_1
    if-nez v1, :cond_4

    .line 1499
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1509
    :goto_2
    return-void

    .line 1481
    .end local v0           #currentPosition:I
    .end local v1           #cutSelector:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1487
    .restart local v0       #currentPosition:I
    .restart local v1       #cutSelector:Z
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    goto :goto_1

    .line 1503
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 1504
    .local v2, initialSelectorLeft:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1506
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1508
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected handleDataChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 572
    const-string v0, "TwSweepActionListView"

    const-string v1, "[handleDataChanged] IN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 577
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 586
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 591
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->handleDataChanged()V

    .line 592
    return-void
.end method

.method public isActionBarOpen()Z
    .locals 4

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 261
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 263
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 265
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_0

    .line 266
    const/4 v3, 0x1

    .line 270
    :goto_1
    return v3

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 565
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 567
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1007
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 1009
    if-nez p1, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 1023
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1026
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    .line 1028
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 1058
    :goto_0
    return-void

    .line 1039
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x82

    if-ne p2, v0, :cond_3

    .line 1042
    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 1054
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 1056
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 730
    .local v0, action:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    .line 731
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 733
    :cond_0
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 735
    packed-switch v0, :pswitch_data_0

    .line 908
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_1
    return v10

    .line 739
    :pswitch_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 741
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v10, :cond_2

    .line 742
    const/4 v10, 0x1

    goto :goto_1

    .line 744
    :cond_2
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v10, :cond_3

    .line 745
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 747
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 751
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    goto :goto_0

    .line 760
    :pswitch_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 764
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v10, :cond_6

    .line 766
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v10, :cond_5

    .line 768
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v10, :cond_4

    .line 770
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto :goto_0

    .line 775
    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v9

    .line 780
    .local v9, sweepdistance:F
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v10, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 781
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 851
    .end local v9           #sweepdistance:F
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 852
    const/4 v10, 0x1

    goto :goto_1

    .line 786
    :cond_6
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-nez v10, :cond_1

    .line 789
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 790
    .local v3, distanceX:F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 791
    .local v4, distanceY:F
    mul-float v10, v3, v3

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 792
    .local v7, sqrtValue:D
    float-to-double v10, v3

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 797
    .local v1, cosineValue:D
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_f

    .line 798
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_e

    .line 799
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_e

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_e

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v10, v1

    double-to-int v10, v10

    const/16 v11, 0x23a

    if-ge v10, v11, :cond_e

    .line 803
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v10, :cond_e

    .line 804
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 806
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v6

    .line 808
    .local v6, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v6, :cond_7

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-eqz v10, :cond_7

    .line 809
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v10, v6, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 811
    :cond_7
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v10, :cond_8

    .line 812
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 814
    :cond_8
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isWithinSweepAllowedArea(F)Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v5, 0x1

    .line 817
    .local v5, restrictSweep:Z
    :goto_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    if-eqz v10, :cond_9

    .line 818
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v10

    and-int/2addr v5, v10

    .line 821
    :cond_9
    if-eqz v5, :cond_b

    .line 822
    const-string v10, "sweepRest"

    const-string v11, "onIntercept(), touch point is not in sweep allowed area"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    .line 825
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 814
    .end local v5           #restrictSweep:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 828
    .restart local v5       #restrictSweep:Z
    :cond_b
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 829
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setPressed(Z)V

    .line 831
    :cond_c
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v11, 0x1

    iput v11, v10, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 833
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 835
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v10, :cond_d

    .line 836
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 837
    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 838
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    .line 847
    .end local v5           #restrictSweep:Z
    .end local v6           #sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_e
    :goto_4
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    .line 848
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_2

    .line 844
    :cond_f
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_4

    .line 862
    .end local v1           #cosineValue:D
    .end local v3           #distanceX:F
    .end local v4           #distanceY:F
    .end local v7           #sqrtValue:D
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 866
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v10, :cond_11

    .line 868
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x1f4

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 870
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 872
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 874
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 876
    :cond_10
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v11, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 878
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 882
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 884
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v10, :cond_12

    .line 886
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 887
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 891
    :cond_12
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_13

    .line 893
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 894
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 898
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    .line 900
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 901
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 902
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    goto/16 :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 628
    sparse-switch p1, :sswitch_data_0

    .line 640
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 635
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    .line 628
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 650
    sparse-switch p1, :sswitch_data_0

    .line 665
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 657
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 659
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    .line 650
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 1426
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1081
    .local v3, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1082
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1084
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1086
    packed-switch v3, :pswitch_data_0

    .line 1311
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    :goto_1
    return v12

    .line 1090
    :pswitch_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 1096
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1097
    const/4 v12, 0x1

    goto :goto_1

    .line 1099
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 1102
    :cond_3
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 1105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_5

    const/4 v4, 0x1

    .line 1111
    .local v4, consumeTouchDown:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v18

    and-int v4, v4, v18

    .line 1115
    :cond_4
    if-eqz v4, :cond_1

    .line 1116
    const-string v18, "TwSweepActionListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onTouchEvent() ACTION_DOWN touch event is in sweep restricted area: touchPointX="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 1120
    .local v12, result:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    .line 1121
    .local v17, touchMode:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removePendingCallbacks()V

    .line 1122
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto/16 :goto_1

    .line 1108
    .end local v4           #consumeTouchDown:Z
    .end local v12           #result:Z
    .end local v17           #touchMode:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1130
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1131
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1134
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1138
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto/16 :goto_0

    .line 1145
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v16

    .line 1150
    .local v16, sweepdistance:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1151
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 1228
    .end local v16           #sweepdistance:F
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1229
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1155
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isListScrollable()Z

    move-result v18

    if-nez v18, :cond_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1160
    .local v9, distanceX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1161
    .local v10, distanceY:F
    mul-float v18, v9, v9

    mul-float v19, v10, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 1162
    .local v14, sqrtValue:D
    float-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 1169
    .local v6, cosineValue:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v10, v18

    if-gez v18, :cond_13

    .line 1171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v9, v18

    if-lez v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    .line 1173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_12

    const-wide v18, 0x408f400000000000L

    mul-double v18, v18, v6

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x23a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1179
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v13

    .line 1185
    .local v13, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 1189
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 1190
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1192
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isWithinSweepAllowedArea(F)Z

    move-result v18

    if-nez v18, :cond_e

    const/4 v11, 0x1

    .line 1195
    .local v11, restrictSweep:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v18

    and-int v11, v11, v18

    .line 1199
    :cond_d
    if-eqz v11, :cond_f

    .line 1200
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    .line 1201
    const-string v18, "sweepRest"

    const-string v19, "onTouch(), touch point is not in sweep allowed area"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1192
    .end local v11           #restrictSweep:Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_4

    .line 1206
    .restart local v11       #restrictSweep:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPressed(Z)V

    .line 1209
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1211
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 1215
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    .line 1216
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 1224
    .end local v11           #restrictSweep:Z
    .end local v13           #sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    .line 1225
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_3

    .line 1221
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_5

    .line 1238
    .end local v6           #cosineValue:D
    .end local v9           #distanceX:F
    .end local v10           #distanceY:F
    .end local v14           #sqrtValue:D
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 1239
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1240
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1253
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 1255
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 1257
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 1262
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 1267
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1271
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    .line 1273
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 1274
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 1275
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 1277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 1279
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removePendingCallbacks()V

    .line 1284
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1288
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v8

    .line 1289
    .local v8, currentIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_19

    const/4 v5, 0x1

    .line 1292
    .local v5, consumeTouchUp:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v18

    and-int v5, v5, v18

    .line 1296
    :cond_18
    if-eqz v5, :cond_1

    .line 1297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    goto/16 :goto_0

    .line 1301
    :pswitch_3
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 1302
    const-string v18, "TwSweepActionListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onTouchEvent() ACTION_UP touch event is consumed because it is in sweep restricted area: touchPointX="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1289
    .end local v5           #consumeTouchUp:Z
    :cond_19
    const/4 v5, 0x0

    goto :goto_6

    .line 1086
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1297
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasWindowFocus"

    .prologue
    const/4 v6, 0x0

    .line 954
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v4, 0x190

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 971
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 978
    :cond_0
    if-eqz p1, :cond_2

    .line 981
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 982
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 986
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 988
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 990
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 992
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_1

    .line 993
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 988
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 998
    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onWindowFocusChanged(Z)V

    .line 1000
    return-void
.end method

.method public openActionBar(II)Z
    .locals 5
    .parameter "position"
    .parameter "flickDirection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 311
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 312
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 314
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 317
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v3

    if-le p1, v3, :cond_3

    :cond_2
    move v1, v2

    .line 350
    :goto_0
    return v1

    .line 323
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v0

    .line 325
    .local v0, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v0, :cond_4

    .line 326
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 327
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v3, :cond_5

    .line 329
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 330
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput v1, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 332
    packed-switch p2, :pswitch_data_0

    .line 344
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    goto :goto_0

    .line 335
    :pswitch_0
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    .line 339
    :pswitch_1
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    :cond_5
    move v1, v2

    .line 350
    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parentPerformItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 556
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 534
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 540
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 542
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 551
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public resetDecorInit()V
    .locals 1

    .prologue
    .line 1950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 1951
    return-void
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    .line 242
    return-void
.end method

.method public setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 250
    return-void
.end method

.method public setSweepAreaRestrictionStart(F)V
    .locals 3
    .parameter "sweepStart"

    .prologue
    .line 1467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    .line 1468
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    .line 1470
    const-string v0, "TwSweepActionListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSweepAreaRestriction() start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    .line 1475
    :cond_0
    return-void
.end method

.method public setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 246
    return-void
.end method

.method shouldShowSelector()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-nez v4, :cond_1

    .line 462
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelector()Z

    move-result v1

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 468
    const/4 v1, 0x0

    .line 470
    .local v1, curActionBarIsPressed:Z
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v4, :cond_4

    move v1, v3

    .line 471
    goto :goto_0

    .line 464
    .end local v1           #curActionBarIsPressed:Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 473
    .restart local v1       #curActionBarIsPressed:Z
    :cond_4
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 475
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_5

    move v1, v3

    .line 476
    goto :goto_0

    .line 478
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 480
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 482
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v1

    goto :goto_0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #curActionBarIsPressed:Z
    .end local v2           #view:Landroid/view/View;
    :cond_6
    move v1, v3

    .line 489
    goto :goto_0
.end method
