.class public Lcom/android/phone/IncomingCallImageHandle;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallImageHandle$3;,
        Lcom/android/phone/IncomingCallImageHandle$HandleState;
    }
.end annotation


# instance fields
.field private final CHANGE_ARROW_DELAY:I

.field private final CHANGE_ARROW_MSG:I

.field private final CHANGE_ARROW_RESET_DELAY:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAKE_TARGET_DURATION:I

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowAnimationIndex:I

.field private mArrowLeftAnimation:[I

.field private mArrowRightAnimation:[I

.field private mContext:Landroid/content/Context;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mParent:Lcom/android/phone/IncomingCallImageWidget;

.field private mTabCircle:Landroid/widget/ImageView;

.field private mTargetCircle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "handleType"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    .line 53
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    .line 55
    const/16 v0, 0x384

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->CHANGE_ARROW_RESET_DELAY:I

    .line 60
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    .line 65
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowRightAnimation:[I

    .line 70
    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    .line 78
    new-instance v0, Lcom/android/phone/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallImageHandle$1;-><init>(Lcom/android/phone/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    .line 116
    sget-object v0, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    .line 237
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/IncomingCallImageHandle;->MAKE_TARGET_DURATION:I

    .line 120
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    .line 121
    iput p2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    .line 122
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageHandle;->init()V

    .line 123
    return-void

    .line 60
    :array_0
    .array-data 0x4
        0x9et 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
        0xa0t 0x2t 0x2t 0x7ft
    .end array-data

    .line 65
    :array_1
    .array-data 0x4
        0xa5t 0x2t 0x2t 0x7ft
        0xa6t 0x2t 0x2t 0x7ft
        0xa7t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallImageHandle;)Lcom/android/phone/IncomingCallImageWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallImageHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallImageHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/IncomingCallImageHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/phone/IncomingCallImageHandle;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingCallImageHandle;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallImageHandle;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingCallImageHandle;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrowRightAnimation:[I

    return-object v0
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    .local v0, action:I
    const/4 v1, 0x0

    .line 170
    .local v1, retValue:Z
    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 174
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    sget-object v2, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 176
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/IncomingCallImageWidget;->vibrate(J)V

    .line 177
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    .line 186
    const/4 v1, 0x1

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 195
    sget-object v2, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 197
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 131
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04004f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    const v1, 0x7f090183

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    .line 134
    const v1, 0x7f090182

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f090184

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    .line 137
    iget v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f0202a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const v2, 0x7f0202a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f0202a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    const v1, 0x7f090186

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->updateHandle()V

    .line 153
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 154
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 157
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f0202a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const v2, 0x7f0202a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f0202a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    const v1, 0x7f090185

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTabCircleAlpha(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTabCircleAlpha : mWidgetState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/phone/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 296
    .local v0, ratio:D
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const-wide v3, 0x406fe00000000000L

    mul-double/2addr v3, v0

    double-to-int v3, v3

    rsub-int v3, v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 298
    .end local v0           #ratio:D
    :cond_0
    return-void
.end method


# virtual methods
.method public getTargetProximityRatio(FF)D
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 328
    iget-object v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 329
    .local v4, pivotX:I
    iget-object v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 330
    .local v5, pivotY:I
    iget-object v9, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    .line 332
    .local v8, radius:I
    int-to-float v9, v4

    sub-float v9, p1, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 333
    .local v0, dx:D
    int-to-float v9, v5

    sub-float v9, p2, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 335
    .local v2, dy:D
    mul-double v9, v0, v0

    mul-double v11, v2, v2

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 337
    .local v6, posLength:D
    int-to-double v9, v8

    div-double v9, v6, v9

    return-wide v9
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 302
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 304
    .local v6, y:F
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 305
    .local v4, targetHalfWidth:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 306
    .local v3, targetHalfHeight:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 307
    .local v1, tabHalfWidth:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 309
    .local v0, tabHalfHeight:I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v7, v4, v1

    sub-int v8, v3, v0

    add-int v9, v4, v1

    add-int v10, v3, v0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 312
    .local v2, tabRect:Landroid/graphics/Rect;
    float-to-int v7, v5

    float-to-int v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    return v7
.end method

.method public isThresholdReached(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 316
    const-wide v0, 0x3fee666666666666L

    .line 318
    .local v0, REACHED_RATIO:D
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    .line 319
    .local v2, ratio:D
    const-wide v4, 0x3fee666666666666L

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 341
    const-string v0, "IncomingCallImageHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 162
    const-string v0, "onFinishInflate"

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoverEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget-boolean v0, v0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "motion"

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 277
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 278
    .local v1, y:F
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    .line 280
    sget-object v2, Lcom/android/phone/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 281
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/IncomingCallImageHandle$2;

    invoke-direct {v3, p0}, Lcom/android/phone/IncomingCallImageHandle$2;-><init>(Lcom/android/phone/IncomingCallImageHandle;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->updateTabCircleAlpha(FF)V

    goto :goto_0
.end method

.method public setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V
    .locals 0
    .parameter "handleState"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageHandle;->updateHandle()V

    .line 235
    return-void
.end method

.method public setParent(Lcom/android/phone/IncomingCallImageWidget;)V
    .locals 0
    .parameter "widget"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageHandle;->mParent:Lcom/android/phone/IncomingCallImageWidget;

    .line 226
    return-void
.end method

.method public updateHandle()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIncomingCallImageWidget state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/android/phone/IncomingCallImageHandle$3;->$SwitchMap$com$android$phone$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleState:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 245
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/IncomingCallImageHandle;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 267
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
