.class public Lcom/android/mms/ui/MsgSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "MsgSweepActionListView.java"


# instance fields
.field private mSweepActionOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "c"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    .line 25
    return-void
.end method

.method private setSweepActionOff()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    .line 17
    return-void
.end method

.method private setSweepActionOn()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    .line 14
    return-void
.end method


# virtual methods
.method public addViewInLayoutMsg(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MsgSweepActionListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionOff()V

    .line 46
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 47
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionOn()V

    goto :goto_0
.end method
