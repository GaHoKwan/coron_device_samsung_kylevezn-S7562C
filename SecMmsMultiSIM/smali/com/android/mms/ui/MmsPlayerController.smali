.class public Lcom/android/mms/ui/MmsPlayerController;
.super Landroid/widget/FrameLayout;
.source "MmsPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final SPLIT_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerController"

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAnchor:Landroid/view/View;

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

.field private mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

.field private mPressDown:Z

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mPrevPageButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRoot:Landroid/view/View;

.field private mShowing:Z

.field private mSpliteView:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    .line 80
    iput v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mSpliteView:I

    .line 160
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 494
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 501
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 717
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    .line 126
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "splitMode"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    .line 80
    iput v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mSpliteView:I

    .line 160
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 494
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 501
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 717
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    .line 134
    iput p2, p0, Lcom/android/mms/ui/MmsPlayerController;->mSpliteView:I

    .line 135
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    .line 80
    iput v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mSpliteView:I

    .line 160
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 494
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 501
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 717
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    .line 107
    iput-object p0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    .line 108
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    .line 80
    iput v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mSpliteView:I

    .line 160
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$1;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$2;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$3;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 494
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$4;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 501
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerController$5;-><init>(Lcom/android/mms/ui/MmsPlayerController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 717
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->initFloatingWindow()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsPlayerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsPlayerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsPlayerController;)Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    return-object v0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 212
    const v1, 0x7f0e018b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    .line 213
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_0
    const v1, 0x7f0e018a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    .line 220
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_1
    const v1, 0x7f0e018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_2
    const v1, 0x7f0e018d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 236
    :cond_3
    const v1, 0x7f0e018f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    .line 237
    const v1, 0x7f0e018e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 243
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 247
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

    .line 249
    return-void
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 154
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 155
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 156
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 158
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    .line 414
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z

    if-eqz v4, :cond_2

    .line 415
    :cond_0
    const/4 v3, 0x0

    .line 434
    :cond_1
    :goto_0
    return v3

    .line 417
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .line 418
    .local v3, position:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 419
    .local v0, duration:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 420
    if-lez v0, :cond_3

    .line 422
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 423
    .local v1, pos:J
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 429
    .end local v1           #pos:J
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 430
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 432
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsPlayerController;->stringForTime(I)Ljava/lang/String;

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

    .line 399
    div-int/lit16 v3, p1, 0x3e8

    .line 401
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 402
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 403
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 405
    .local v0, hours:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 406
    if-lez v0, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

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

    .line 409
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mFormatter:Ljava/util/Formatter;

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
    .line 520
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isStartAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

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
    .line 349
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    .line 350
    return-void
.end method

.method public SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "showModel"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    .line 693
    :cond_0
    return-void
.end method

.method public clearBackPressed()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    .line 723
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 452
    .local v0, keyCode:I
    const-string v2, "Mms/MmsPlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent(),keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->doPauseResume()V

    .line 459
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 460
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 483
    :cond_1
    :goto_0
    return v1

    .line 464
    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    .line 467
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    goto :goto_0

    .line 470
    :cond_3
    const/16 v2, 0x19

    if-eq v0, v2, :cond_4

    const/16 v2, 0x18

    if-ne v0, v2, :cond_5

    .line 472
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 475
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 476
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    .line 477
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0

    .line 479
    :cond_6
    const/16 v2, 0x52

    if-ne v0, v2, :cond_7

    .line 480
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0

    .line 483
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doNextPage()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->next()V

    .line 516
    return-void
.end method

.method public doPauseResume()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    .line 538
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    .line 539
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method public doPrevPage()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->prev()V

    .line 511
    return-void
.end method

.method public getBackPressed()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mIsBackPressed:Z

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPauseButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPrevPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    const-string v1, "Mms/MmsPlayerController"

    const-string v2, "hide()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 370
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPaused()Z

    move-result v0

    .line 680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayed()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlayed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x1

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    .line 673
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressDown()Z
    .locals 3

    .prologue
    .line 344
    const-string v0, "Mms/MmsPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPressDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPressDown:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isStop()Z

    move-result v0

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 204
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerController;->initControllerView(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public moveToCurrentPosition()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->seek(I)V

    .line 703
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->initControllerView(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 439
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 445
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public pausePlayer()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pause()V

    .line 655
    :cond_0
    return-void
.end method

.method public pauseSmilPlayer()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->pauseSmilPlayer()V

    .line 660
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->seek(I)V

    .line 698
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 184
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    .line 186
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 190
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerController;->setStatePauseButton(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->disableUnsupportedButtons()V

    .line 549
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 550
    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    .line 173
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    .line 174
    return-void
.end method

.method public setPageMoveButton(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerController;->setStatePrevButton(Z)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerController;->setStateNextButton(Z)V

    .line 555
    return-void
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 708
    :cond_0
    return-void
.end method

.method public setStateNextButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    :cond_0
    return-void
.end method

.method public setStatePauseButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 618
    :cond_0
    return-void
.end method

.method public setStatePrevButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 625
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    .line 257
    return-void
.end method

.method public show(I)V
    .locals 10
    .parameter "timeout"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 284
    const-string v4, "Mms/MmsPlayerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show(),timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->setProgress()I

    .line 289
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->disableUnsupportedButtons()V

    .line 295
    new-array v0, v9, [I

    .line 296
    .local v0, anchorpos:[I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 298
    :try_start_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 299
    .local v3, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 300
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 304
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    iget v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mSpliteView:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 306
    const/4 v4, 0x0

    aget v4, v0, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 309
    :cond_1
    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 310
    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 311
    const/16 v4, 0x3ea

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 312
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 313
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 314
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 315
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPlayerController;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #anchorpos:[I
    .end local v3           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerController;->updatePausePlay()V

    .line 327
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableInfiniteDispMMSProgressbar()Z

    move-result v4

    if-nez v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 331
    .local v2, msg:Landroid/os/Message;
    if-eqz p1, :cond_3

    .line 332
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerController;->mHandler:Landroid/os/Handler;

    int-to-long v5, p1

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 336
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    return-void

    .line 317
    .restart local v0       #anchorpos:[I
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    const-string v4, "Mms/MmsPlayerController"

    const-string v5, "catch BadTokenException - MmsPlayerController.show()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iput-boolean v7, p0, Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z

    goto :goto_0
.end method

.method public stopPlayer()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->stop()V

    .line 645
    :cond_0
    return-void
.end method

.method public stopSmilPlayer()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->stopSmilPlayer()V

    .line 650
    :cond_0
    return-void
.end method

.method public updateToPlayButton()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
