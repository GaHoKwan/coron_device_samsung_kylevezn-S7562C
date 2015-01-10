.class public Lcom/android/phone/IncomingCallImageWidget;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public final VIBRATE_LONG:J

.field public final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mGrabbedState:I

.field private mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

.field private mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

.field private mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

.field public mUseHoverToAction:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingCallImageWidget;->DBG:Z

    .line 33
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 37
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 47
    iput v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 59
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageWidget;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingCallImageWidget;->DBG:Z

    .line 33
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 37
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 47
    iput v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 65
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageWidget;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingCallImageWidget;->DBG:Z

    .line 33
    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_SHORT:J

    .line 37
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallImageWidget;->VIBRATE_LONG:J

    .line 47
    iput v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 71
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageWidget;->init()V

    .line 73
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 76
    const-string v2, "init"

    invoke-virtual {p0, v2}, Lcom/android/phone/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 78
    const-string v3, "useHoverToAction"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mUseHoverToAction:Z

    .line 80
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 83
    .local v0, leftLP:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/android/phone/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/phone/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    .line 84
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v2, p0}, Lcom/android/phone/IncomingCallImageHandle;->setParent(Lcom/android/phone/IncomingCallImageWidget;)V

    .line 85
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 90
    .local v1, rightLP:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/android/phone/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/phone/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/phone/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    .line 91
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v2, p0}, Lcom/android/phone/IncomingCallImageHandle;->setParent(Lcom/android/phone/IncomingCallImageWidget;)V

    .line 92
    iget-object v2, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method private updateLayout()V
    .locals 8

    .prologue
    .line 110
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x3

    .line 112
    .local v2, margin:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v2

    .line 113
    .local v0, leftHandleLeft:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v1, v5, v2

    .line 115
    .local v1, leftHandleTop:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 118
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v3, v5, v2

    .line 119
    .local v3, rightHandleLeft:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v4, v5, v2

    .line 121
    .local v4, rightHandleTop:I
    iget-object v5, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 123
    return-void
.end method


# virtual methods
.method public dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    .line 216
    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IncomingCallImageWidget;->vibrate(J)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 220
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 264
    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 101
    invoke-direct {p0}, Lcom/android/phone/IncomingCallImageWidget;->updateLayout()V

    .line 102
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 136
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 138
    return-void
.end method

.method public setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 227
    iget v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 228
    iput p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    .line 230
    iget v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 249
    :cond_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    .line 239
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    .line 208
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallImageWidget;->reset()V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
