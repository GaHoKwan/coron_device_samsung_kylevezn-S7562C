.class public Lcom/android/mms/ui/MmsPlayerControllerMulti;
.super Landroid/widget/FrameLayout;
.source "MmsPlayerControllerMulti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final SPLIT_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerController"

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mIsBackPressed:Z

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextPageButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

.field private mPressDown:Z

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mPrevPageButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRoot:Landroid/view/View;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    .line 154
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 347
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$2;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 462
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$4;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextListener:Landroid/view/View$OnClickListener;

    .line 666
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->initFloatingWindow()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    .line 154
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 347
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$2;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 462
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$4;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextListener:Landroid/view/View$OnClickListener;

    .line 666
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsPlayerControllerMulti;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mDragging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    return-object v0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 204
    const v1, 0x7f0e018b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    .line 205
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 207
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_0
    const v1, 0x7f0e018a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    .line 212
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_1
    const v1, 0x7f0e018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_2
    const v1, 0x7f0e018d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 228
    :cond_3
    const v1, 0x7f0e018f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    .line 229
    const v1, 0x7f0e018e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mCurrentTime:Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatter:Ljava/util/Formatter;

    .line 238
    return-void
.end method

.method private initFloatingWindow()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    .line 382
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mDragging:Z

    if-eqz v4, :cond_2

    .line 383
    :cond_0
    const/4 v3, 0x0

    .line 402
    :cond_1
    :goto_0
    return v3

    .line 385
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .line 386
    .local v3, position:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 387
    .local v0, duration:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 388
    if-lez v0, :cond_3

    .line 390
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 391
    .local v1, pos:J
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 397
    .end local v1           #pos:J
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 398
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 400
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 367
    div-int/lit16 v3, p1, 0x3e8

    .line 369
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 370
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 371
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 373
    .local v0, hours:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 374
    if-lez v0, :cond_0

    .line 375
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isStartAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public SetIsPressDown(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    .line 323
    return-void
.end method

.method public SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "showModel"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    .line 642
    :cond_0
    return-void
.end method

.method public clearBackPressed()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    .line 672
    return-void
.end method

.method public doNextPage()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->next()V

    .line 484
    return-void
.end method

.method public doPauseResume()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pause()V

    .line 506
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 507
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method public doPrevPage()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->prev()V

    .line 479
    return-void
.end method

.method public getBackPressed()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 663
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPauseButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPrevPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 338
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 339
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isInVisibleRect(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 675
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    if-eqz v1, :cond_0

    .line 676
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 677
    .local v0, globalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 678
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 680
    .end local v0           #globalRect:Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPaused()Z

    move-result v0

    .line 629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayed()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlayed()Z

    move-result v0

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v0

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressDown()Z
    .locals 3

    .prologue
    .line 317
    const-string v0, "Mms/MmsPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPressDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isStop()Z

    move-result v0

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 196
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    .line 198
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->initControllerView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public moveToCurrentPosition()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->seek(I)V

    .line 652
    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0xbb8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 685
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 687
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 689
    .local v1, uniqueDown:Z
    :goto_0
    const/16 v4, 0x4f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x55

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-ne v0, v4, :cond_3

    .line 691
    :cond_0
    if-eqz v1, :cond_1

    .line 692
    const-string v3, "Mms/MmsPlayerController"

    const-string v4, "handle toggle"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPauseResume()V

    .line 694
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 695
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 731
    :cond_1
    :goto_1
    return v2

    .end local v1           #uniqueDown:Z
    :cond_2
    move v1, v3

    .line 687
    goto :goto_0

    .line 700
    .restart local v1       #uniqueDown:Z
    :cond_3
    const/16 v4, 0x7e

    if-ne v0, v4, :cond_4

    .line 701
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 702
    const-string v3, "Mms/MmsPlayerController"

    const-string v4, "handle play"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->start()V

    .line 704
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 705
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    goto :goto_1

    .line 708
    :cond_4
    const/16 v4, 0x56

    if-eq v0, v4, :cond_5

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_6

    .line 710
    :cond_5
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 711
    const-string v3, "Mms/MmsPlayerController"

    const-string v4, "handle stop"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pause()V

    .line 713
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 714
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    goto :goto_1

    .line 717
    :cond_6
    const/16 v2, 0x19

    if-eq v0, v2, :cond_7

    const/16 v2, 0x18

    if-eq v0, v2, :cond_7

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_8

    .line 721
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 723
    :cond_8
    const/16 v2, 0x52

    if-ne v0, v2, :cond_a

    .line 724
    if-eqz v1, :cond_9

    .line 725
    const-string v2, "Mms/MmsPlayerController"

    const-string v4, "handle key 4"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    :cond_9
    move v2, v3

    .line 728
    goto :goto_1

    :cond_a
    move v2, v3

    .line 731
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 407
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 413
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public pausePlayer()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pause()V

    .line 604
    :cond_0
    return-void
.end method

.method public pauseSmilPlayer()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pauseSmilPlayer()V

    .line 609
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->seek(I)V

    .line 647
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/widget/RelativeLayout;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 178
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, v:Landroid/view/View;
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    .line 185
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePauseButton(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->disableUnsupportedButtons()V

    .line 517
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    .line 167
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 168
    return-void
.end method

.method public setPageMoveButton(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    .line 523
    return-void
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 657
    :cond_0
    return-void
.end method

.method public setStateNextButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 581
    :cond_0
    return-void
.end method

.method public setStatePauseButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 567
    :cond_0
    return-void
.end method

.method public setStatePrevButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 574
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 246
    return-void
.end method

.method public show(I)V
    .locals 7
    .parameter "timeout"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 273
    const-string v2, "Mms/MmsPlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show(),timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setProgress()I

    .line 278
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->disableUnsupportedButtons()V

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 300
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableInfiniteDispMMSProgressbar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 305
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "Mms/MmsPlayerController"

    const-string v3, "catch BadTokenException - MmsPlayerController.show()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iput-boolean v6, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    goto :goto_0
.end method

.method public stopPlayer()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->stop()V

    .line 594
    :cond_0
    return-void
.end method

.method public stopSmilPlayer()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->stopSmilPlayer()V

    .line 599
    :cond_0
    return-void
.end method

.method public updateToPlayButton()V
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
