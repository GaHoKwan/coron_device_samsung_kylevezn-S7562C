.class public Lcom/android/mms/ui/SplitManager;
.super Ljava/lang/Object;
.source "SplitManager.java"


# static fields
.field private static final ANIMATION_DELAY:I = 0x0

.field private static final ANIMATION_OFFSET:I = 0x28

.field private static final CONV_MODE:I = 0x65

.field private static final FOLDER_MODE:I = 0x66

.field private static SPLIT_BAR_DEFAULT_POSITION:I = 0x0

.field private static final SPLIT_BAR_MARGIN:I = 0x10

.field private static final SPLIT_BAR_MAX_X:F = 635.0f

.field private static final SPLIT_BAR_MIN_X:F = 10.0f

.field private static final SPLIT_BAR_WIDTH:I = 0x4

.field public static final SPLIT_MODE_LEFT_ONLY:I = 0x0

.field public static final SPLIT_MODE_NONE:I = -0x1

.field public static final SPLIT_MODE_RIGHT_ONLY:I = 0x1

.field public static final SPLIT_MODE_SPLITED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/SplitManager"


# instance fields
.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

.field private mCount:I

.field private mDensity:F

.field private mEndX:I

.field private mIsAnimationEnable:Z

.field private mLeftView:Landroid/view/View;

.field private mMaxX:I

.field private mMinX:I

.field private mMode:I

.field private mOffset:I

.field private mOnAnimate:Z

.field private mRightView:Landroid/view/View;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarMargin:I

.field private mSplitMode:I

.field private mStartX:I

.field private mUseSplitMode:Z

.field private mWidth:I

.field private mX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xf0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 3
    .parameter "leftView"
    .parameter "rightView"
    .parameter "splitBar"
    .parameter "boxListView"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 42
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 58
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 61
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 95
    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 96
    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 97
    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 99
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    .line 100
    if-eqz p4, :cond_0

    .line 101
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 110
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/high16 v1, 0x4120

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    .line 111
    const v1, 0x441ec000

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    .line 113
    const/high16 v1, 0x4180

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V
    .locals 3
    .parameter "leftView"
    .parameter "rightView"
    .parameter "splitBar"
    .parameter "conversationComposer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 42
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 58
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 61
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 68
    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 70
    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 72
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    .line 74
    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    .line 76
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 85
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/high16 v1, 0x4120

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    .line 86
    const v1, 0x441ec000

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    .line 88
    const/high16 v1, 0x4180

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SplitManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SplitManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$828(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    return v0
.end method

.method private animationLayout()Z
    .locals 4

    .prologue
    .line 356
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    .line 357
    const/4 v2, 0x0

    .line 387
    :goto_0
    return v2

    .line 359
    :cond_0
    new-instance v1, Lcom/android/mms/ui/SplitManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SplitManager$1;-><init>(Lcom/android/mms/ui/SplitManager;)V

    .line 385
    .local v1, runExpand:Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 386
    .local v0, handler:Landroid/os/Handler;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadSplitPosition()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget v1, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    sget v1, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    goto :goto_0
.end method


# virtual methods
.method public UpdateSplitPosition(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 158
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    add-int v0, v2, p1

    .line 159
    .local v0, x:I
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    if-ge v0, v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    if-gt v0, v2, :cond_0

    .line 164
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 167
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0
.end method

.method public getAnimationEnable()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return v0
.end method

.method public getSplitMode()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    return v0
.end method

.method public getXpositon()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method public refreshLayouts()Z
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/16 v7, 0x65

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .line 266
    .local v2, lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    packed-switch v6, :pswitch_data_0

    .line 352
    :goto_0
    return v5

    .line 269
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v6, v7, :cond_0

    .line 271
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 276
    :cond_0
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 278
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 283
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_1
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 274
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    goto :goto_1

    .line 288
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v5, :cond_3

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 289
    .local v0, leftViewWidth:I
    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 290
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v5, v0

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 291
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v5, v7, :cond_1

    .line 299
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->ShowSipOnComposeMessage()V

    goto :goto_2

    .line 288
    .end local v0           #leftViewWidth:I
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    goto :goto_3

    .line 312
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 313
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v6, v7, :cond_4

    .line 314
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 318
    :cond_4
    :goto_4
    const/4 v3, 0x0

    .line 320
    .local v3, toRight:Z
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_6

    .line 321
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 323
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :goto_5
    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 339
    .local v4, totalWidth:I
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_7

    .line 342
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v5, v4, v5

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    neg-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 346
    :goto_6
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 316
    .end local v3           #toRight:Z
    .end local v4           #totalWidth:I
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    goto :goto_4

    .line 328
    .restart local v3       #toRight:Z
    :cond_6
    const/4 v3, 0x1

    .line 329
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 331
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 344
    .restart local v4       #totalWidth:I
    :cond_7
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v5, v4, v5

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    add-int/2addr v5, v6

    neg-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSplitPosition()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_splitbar_position"

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 125
    return-void
.end method

.method public setSplitMode(IZ)Z
    .locals 5
    .parameter "splitMode"
    .parameter "withAnimation"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 194
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne p1, v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 199
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 216
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 227
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    if-nez v2, :cond_7

    .line 228
    :cond_4
    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0

    .line 205
    :cond_5
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-eq v2, v4, :cond_6

    .line 206
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ConversationComposer;->setActionBarHomeAsUp(Z)V

    goto :goto_1

    .line 210
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ConversationComposer;->setActionBarHomeAsUp(Z)V

    goto :goto_1

    .line 231
    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    .line 234
    iput-boolean v4, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 235
    iput v4, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    .line 236
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne v2, v4, :cond_9

    .line 239
    const/16 v2, -0x28

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    .line 240
    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    .line 241
    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    neg-int v1, v1

    :goto_2
    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    .line 251
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v1

    goto :goto_0

    .line 241
    :cond_8
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    neg-int v1, v1

    goto :goto_2

    .line 255
    :cond_9
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    goto :goto_3
.end method

.method public setUseSplitMode(Z)V
    .locals 4
    .parameter "useSplitMode"

    .prologue
    const/4 v2, -0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :goto_0
    const-string v1, "Mms/SplitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseSplitMode usesplitMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 135
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 120
    const-string v0, "Mms/SplitManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
