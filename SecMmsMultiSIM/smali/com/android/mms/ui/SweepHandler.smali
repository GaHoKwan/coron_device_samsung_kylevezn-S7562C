.class public Lcom/android/mms/ui/SweepHandler;
.super Ljava/lang/Object;
.source "SweepHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SweepHandler"


# instance fields
.field private currentIndex:I

.field private isCallable:Z

.field private isVoiceCallAvailabe:Z

.field private mCallBg:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDensityScale:F

.field private mLastDrawRcHeight:I

.field private mLastDrawRcWidth:I

.field private mMsgBg:Landroid/graphics/drawable/Drawable;

.field private mMsgIcon:Landroid/graphics/drawable/Drawable;

.field private mMsgText:Ljava/lang/String;

.field private mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWidthPadding:I

.field private mWrongCallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V
    .locals 2
    .parameter "context"
    .parameter "sweepHandlerInterface"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    .line 116
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 117
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 118
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    .line 168
    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/mms/ui/SweepHandler;->mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->initResources()V

    .line 63
    return-void
.end method

.method private adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .parameter "d"
    .parameter "height"
    .parameter "wPadding"

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "SweepHandler"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "SweepHandler"

    const-string v1, "adjustDrawableBound"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    int-to-float v0, p3

    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    return-void
.end method

.method private drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9
    .parameter "canvas"
    .parameter "msgText"
    .parameter "opacity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 347
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 351
    .local v1, ss:I
    const/high16 v5, 0x41c8

    .line 352
    .local v5, textSizeDp:F
    iget v6, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float v4, v5, v6

    .line 354
    .local v4, textSize:F
    new-instance v3, Landroid/graphics/Paint;

    const/16 v6, 0x101

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 357
    .local v3, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 358
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "opa = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_1
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 361
    .local v2, textColor:I
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v0, v6

    .line 362
    .local v0, shadowColor:I
    shl-int/lit8 v6, v2, 0x18

    const v7, 0xffffff

    add-int v2, v6, v7

    .line 363
    shl-int/lit8 v6, v0, 0x18

    add-int/lit8 v0, v6, 0x0

    .line 364
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "textcolor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_2
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 367
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shadowColor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_3
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    const/high16 v6, 0x4040

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 371
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    const/high16 v6, 0x4040

    div-float v6, v5, v6

    iget v7, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, p5

    invoke-virtual {p1, p2, p4, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 375
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 376
    return-void
.end method

.method private getCallBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getCallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initResources()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0193

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0192

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    .line 112
    return-void
.end method

.method private setupDrawablesBound(II)V
    .locals 5
    .parameter "height"
    .parameter "width"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 135
    const-string v1, "SweepHandler"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "SweepHandler"

    const-string v2, "setupDrawablesBound"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    const/high16 v1, 0x40e0

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 139
    .local v0, wPadding:I
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 143
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 144
    return-void
.end method


# virtual methods
.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 151
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

    invoke-interface {v2, p1}, Lcom/android/mms/ui/SweepHandler$ListCheckInterface;->isListIndex(I)Z

    move-result v1

    .line 154
    .local v1, isListIndex:Z
    if-eqz v1, :cond_1

    .line 157
    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 158
    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 163
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    if-nez v2, :cond_0

    .line 164
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 165
    :cond_0
    return-object v0

    .line 160
    :cond_1
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 161
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "ctx"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rc"
    .parameter "canvas"

    .prologue
    .line 177
    iget-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 182
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v1, "onDrawSweepActionBar(), itemIndex:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "sweepProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", sweepState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 185
    const-string v1, "SweepHandler"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v8, 0x0

    .line 193
    .local v8, needBoundUpdate:Z
    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 194
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 195
    const/4 v8, 0x1

    .line 199
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 200
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 201
    const/4 v8, 0x1

    .line 204
    :cond_3
    if-eqz v8, :cond_4

    .line 205
    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SweepHandler;->setupDrawablesBound(II)V

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

    invoke-interface {v1, p2}, Lcom/android/mms/ui/SweepHandler$ListCheckInterface;->isCallable(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 215
    iput p2, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 219
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_5

    .line 220
    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepDraw start :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_5
    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_6

    const/high16 v1, -0x4080

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7

    .line 223
    :cond_6
    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepDraw done :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_8

    .line 230
    const/high16 v4, 0x3f80

    .line 231
    .local v4, opacity:F
    move v7, p3

    .line 234
    .local v7, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 237
    .local v10, ss:I
    neg-float v1, v7

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 261
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    .line 289
    .end local v4           #opacity:F
    .end local v7           #drawProgress:F
    .end local v10           #ss:I
    :cond_8
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_9

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    .line 293
    :cond_9
    const/high16 v4, 0x3f80

    .line 296
    .restart local v4       #opacity:F
    const/high16 v1, -0x4080

    mul-float v7, v1, p3

    .line 299
    .restart local v7       #drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 302
    .restart local v10       #ss:I
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v7, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 307
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 308
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 336
    iget-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    if-eqz v1, :cond_a

    .line 337
    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    .line 339
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 4
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    const/4 v0, 0x1

    .line 379
    const-string v1, "SweepHandler"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShouldDrawSelector(), itemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
