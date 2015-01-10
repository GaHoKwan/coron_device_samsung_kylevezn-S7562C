.class public Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
.super Ljava/lang/Object;
.source "ContactSplitRatioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DeltaX:I

.field private mActivity:Landroid/app/Activity;

.field private mFocusedSplitBar:Landroid/view/View;

.field private mIsMultiWindowSupported:Z

.field private mLeftPaneContainer:Landroid/view/View;

.field private mLeftPaneMaxWidth:I

.field private mLeftPaneMinWidth:I

.field private mLeftTransparentSplitBar:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mRightTransparentSplitBar:Landroid/view/View;

.field private mSavedLeftPaneWidthLandscape:I

.field private mSavedLeftPaneWidthPortrait:I

.field private mSavedXOFfset:I

.field private mScreenWidth:I

.field private mSplitBar:Landroid/view/View;

.field private mSplitHover:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;)V
    .locals 2
    .parameter "activity"
    .parameter "splitBar"
    .parameter "leftTransparentSplitBar"
    .parameter "rightTransparentSplitBar"
    .parameter "focusedSplitBar"
    .parameter "leftPaneContainer"
    .parameter "splitHover"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I

    .line 76
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedXOFfset:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    .line 102
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    .line 107
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;

    .line 108
    iput-object p3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    .line 109
    iput-object p4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    .line 110
    iput-object p5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    .line 111
    iput-object p6, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    .line 112
    iput-object p7, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    .line 113
    iput-object p8, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsMultiWindowSupported:Z

    .line 117
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthLandscape:I

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthPortrait:I

    .line 127
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mScreenWidth:I

    .line 130
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/sec/multiwindow/MultiWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Landroid/sec/multiwindow/MultiWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configureSplitBarListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;-><init>(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)V

    .line 214
    .local v0, SplitBarListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$2;-><init>(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 241
    return-void
.end method

.method private getCurrentLeftPaneWidth()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private getCurrentOrientation()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getSavedLeftPaneWidth()I
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthPortrait:I

    .line 299
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthLandscape:I

    goto :goto_0
.end method

.method private getSavedX_OFFSET()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedXOFfset:I

    return v0
.end method

.method private setLeftPaneWidth(II)V
    .locals 4
    .parameter "leftPaneWidth"
    .parameter "X_OFFSET"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 247
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    sub-int/2addr p1, p2

    .line 255
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I

    if-ge p1, v1, :cond_2

    .line 256
    iget p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I

    .line 261
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split ratio changed. Left pane width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setSavedLeftPaneWidth(I)V

    .line 270
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setSavedX_OFFSET(I)V

    .line 272
    return-void

    .line 257
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    if-le p1, v1, :cond_1

    .line 258
    iget p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    goto :goto_0
.end method

.method private setSavedLeftPaneWidth(I)V
    .locals 2
    .parameter "currentLeftPaneWidth"

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthPortrait:I

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthLandscape:I

    goto :goto_0
.end method

.method private setSavedX_OFFSET(I)V
    .locals 0
    .parameter "xOffset"

    .prologue
    .line 277
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedXOFfset:I

    .line 278
    return-void
.end method


# virtual methods
.method public initialize(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v0, "leftPaneWidthPortrait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthPortrait:I

    .line 146
    const-string v0, "leftPaneWidthLandscape"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthLandscape:I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 152
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->configureSplitBarListener()V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getSavedLeftPaneWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getSavedX_OFFSET()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V

    .line 156
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    const-string v0, "leftPaneWidthPortrait"

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthPortrait:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v0, "leftPaneWidthLandscape"

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentLeftPaneWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v0, "leftPaneWidthPortrait"

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentLeftPaneWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v0, "leftPaneWidthLandscape"

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidthLandscape:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
