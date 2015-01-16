.class public Lcom/sec/widget/lso/InvisibleOverlay;
.super Landroid/widget/LinearLayout;
.source "InvisibleOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSO"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLSOView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "LSO"

    const-string v1, "InvisibleOverlay(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const-string v0, "LSO"

    const-string v1, "InvisibleOverlay(context,attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Lcom/sec/widget/lso/LockscreenOverlayView;

    iget-object v1, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/widget/lso/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mLSOView:Landroid/view/View;

    .line 72
    return-void
.end method

.method private getFrameLayout()Landroid/widget/FrameLayout;
    .locals 6

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, fl:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 98
    .local v2, vp:Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/ViewParent;>;"
    const-string v3, "LSO"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-class v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attaching LockscreenOverlayView to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 103
    check-cast v1, Landroid/widget/FrameLayout;

    .line 104
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 110
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/ViewParent;>;"
    :cond_1
    return-object v1
.end method


# virtual methods
.method public changeVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mLSOView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mLSOView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 80
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 82
    invoke-direct {p0}, Lcom/sec/widget/lso/InvisibleOverlay;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 84
    .local v1, fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mLSOView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/sec/widget/lso/InvisibleOverlay;->mLSOView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
