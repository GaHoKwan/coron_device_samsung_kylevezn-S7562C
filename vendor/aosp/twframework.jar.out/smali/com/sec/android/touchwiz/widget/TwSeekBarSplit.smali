.class public Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBarSplit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;,
        Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSplitDrawable:Landroid/graphics/drawable/Drawable;

.field private mSplitHeight:I

.field private mSplitWidth:I

.field mTextRect:Landroid/graphics/Rect;

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 158
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xd7

    const/4 v3, 0x1

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    const v1, 0x2020210

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundDrawable(I)V

    .line 173
    const v1, 0x2020217

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressDrawable(I)V

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 177
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTextRect:Landroid/graphics/Rect;

    .line 179
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 181
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    const/high16 v2, 0x420c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 187
    const-string v1, "Roboto"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 189
    .local v0, tf:Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 191
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    const/high16 v1, 0x41f0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTextWidth:I

    .line 196
    const/high16 v1, 0x4180

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    .line 199
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v2, 0x258

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/high16 v1, 0x4080

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    .line 202
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0x45

    const/16 v3, 0x4f

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    const/high16 v1, 0x4040

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    .line 206
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0x29

    const/16 v3, 0x2c

    const/16 v4, 0x2d

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected getProgressWidth()I
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgressWidth()I

    move-result v0

    return v0
.end method

.method public getSplitProgress()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgress()I

    move-result v0

    .line 368
    .local v0, progress:I
    const-string v3, "zero_shuttle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v3, "zero_shuttle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): getMax() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getMax()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, thumbText:Ljava/lang/CharSequence;
    const-string v3, "zero_shuttle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): thumbText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 379
    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, text:Ljava/lang/String;
    :goto_0
    const-string v3, "zero_shuttle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-object v1

    .line 381
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHoverChanged(III)V
    .locals 2
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;->onHoverChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V

    .line 425
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    .line 426
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onSizeChanged(IIII)V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    .line 314
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int p2, v0, v1

    .line 316
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;I)V

    .line 409
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    .line 410
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    .line 236
    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    .line 417
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    .line 418
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    .line 263
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    .line 229
    return-void
.end method

.method public setProgressBounds()V
    .locals 8

    .prologue
    .line 275
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressBounds()V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 279
    .local v1, progressBounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getMax()I

    move-result v0

    .line 281
    .local v0, max:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    div-float v2, v4, v5

    .line 283
    .local v2, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 285
    .local v3, w:I
    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 289
    div-int/lit8 v4, v3, 0x2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    :goto_1
    return-void

    .line 281
    .end local v2           #scale:F
    .end local v3           #w:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 298
    .restart local v2       #scale:F
    .restart local v3       #w:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbCenterPosX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v3, 0x2

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public declared-synchronized setRange(I)V
    .locals 1
    .parameter "range"

    .prologue
    .line 390
    monitor-enter p0

    const/16 v0, 0x12

    if-le p1, v0, :cond_0

    .line 394
    const/16 p1, 0x12

    .line 398
    :cond_0
    :try_start_0
    rem-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 400
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
