.class public Lcom/sec/android/app/dialertab/calllog/SplitBarManager;
.super Ljava/lang/Object;
.source "SplitBarManager.java"


# static fields
.field public static isSupportMultiWindow:Z

.field private static prevX:I


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field mContainer:Landroid/widget/FrameLayout;

.field mLeftSplitBar:Landroid/widget/ImageButton;

.field mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field mRightSplitBar:Landroid/widget/ImageButton;

.field mSavedX:I

.field mSavedXLand:I

.field mSavedXPort:I

.field mSplitBarColored:Landroid/widget/LinearLayout;

.field mSplitHover:Landroid/view/View;

.field mSplitMaxX:I

.field mSplitMinX:I

.field mSupportCheckBox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xf0

    sput v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->prevX:I

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->isSupportMultiWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedXLand:I

    .line 56
    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedXPort:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)Landroid/sec/multiwindow/MultiWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mMW:Landroid/sec/multiwindow/MultiWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;Landroid/sec/multiwindow/MultiWindow;)Landroid/sec/multiwindow/MultiWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mMW:Landroid/sec/multiwindow/MultiWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V

    return-void
.end method

.method private setSplitView(IZ)V
    .locals 3
    .parameter "x"
    .parameter "mMove"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 223
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    if-ge p1, v1, :cond_3

    .line 224
    iget p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    .line 229
    :cond_0
    :goto_0
    if-nez p2, :cond_6

    .line 230
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    if-ne p1, v1, :cond_1

    .line 231
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    if-ne p1, v1, :cond_4

    .line 232
    add-int/lit8 p1, p1, 0x2

    .line 239
    :cond_1
    :goto_1
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    .line 240
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_2
    :goto_2
    return-void

    .line 225
    :cond_3
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    if-le p1, v1, :cond_0

    .line 226
    iget p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    goto :goto_0

    .line 233
    :cond_4
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    if-ne p1, v1, :cond_5

    .line 234
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 236
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 243
    :cond_6
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    sub-int/2addr v1, p1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_7

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    sub-int/2addr v1, p1

    const/16 v2, -0x19

    if-gt v1, v2, :cond_2

    .line 246
    :cond_7
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    .line 247
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private setUpHovering()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitHover:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$1;-><init>(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 156
    return-void
.end method

.method private setUpSplitBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;-><init>(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)V

    .line 213
    .local v0, listener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    return-void
.end method


# virtual methods
.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 264
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 265
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 271
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSupportCheckBox:Z

    if-eqz v0, :cond_0

    .line 108
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->hasMultiWindwoFeature()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->isSupportMultiWindow:Z

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitHover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setUpSplitBar()V

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setUpHovering()V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setDefaultlayout()V

    .line 123
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V

    .line 124
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    goto :goto_0
.end method

.method public setDefaultlayout()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    goto :goto_0
.end method

.method public setValues(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .parameter "splitBarColoredId"
    .parameter "leftSplitBarId"
    .parameter "rightSplitBarId"
    .parameter "splitHover"
    .parameter "containerId"
    .parameter "listFragment"
    .parameter "favouriteFragment"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitBarColored:Landroid/widget/LinearLayout;

    .line 93
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    .line 94
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    .line 95
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitHover:Landroid/view/View;

    .line 96
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    .line 97
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 98
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 99
    return-void
.end method
