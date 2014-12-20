.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
.super Landroid/view/View;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SweepActionBarView"
.end annotation


# static fields
.field private static final CALL_INVALIDATE:I = 0x1


# instance fields
.field actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

.field anim:Landroid/view/animation/Animation;

.field private finalDistance:F

.field index:I

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field moveDistance:F

.field private oldDistance:F

.field paint:Landroid/graphics/Paint;

.field progress:F

.field rect:Landroid/graphics/Rect;

.field status:I

.field sweepActionView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field viewTop:I

.field width:F


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V
    .locals 3
    .parameter
    .parameter "c"
    .parameter "actionView"
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1550
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1552
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1521
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    .line 1523
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1541
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1543
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    .line 1639
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;

    .line 1554
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    .line 1555
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    .line 1556
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1557
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    .line 1558
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    .line 1559
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1561
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1563
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->createSweepRect()V

    .line 1565
    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1568
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1517
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V

    return-void
.end method

.method private createSweepRect()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1572
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1574
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    .line 1575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1578
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1580
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    .line 1583
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1584
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    .line 1588
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    .line 1589
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    .line 1591
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1593
    return-void
.end method

.method private onSweep(F)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 1617
    const-string v1, "TwSweepActionListView"

    const-string v2, "onSweep"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    .line 1620
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    .line 1621
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    .line 1622
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->oldDistance:F

    .line 1623
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1626
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1629
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1631
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;

    move-result-object v0

    .line 1632
    .local v0, lView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1636
    .end local v0           #lView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private requestAnimation(FFI)V
    .locals 3
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 1653
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1655
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V

    .line 1657
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1002(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I

    .line 1661
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    .line 1663
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1664
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1665
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1761
    return-void
.end method

.method private setProgress(F)V
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x42c8

    .line 1608
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    div-float v0, p1, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    goto :goto_0
.end method

.method private setSweepAnimation(Z)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x0

    .line 1787
    const/4 v2, 0x0

    .line 1788
    .local v2, startPosition:F
    const/4 v1, 0x0

    .line 1789
    .local v1, endPosition:F
    const/4 v0, 0x0

    .line 1791
    .local v0, duration:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v3, :pswitch_data_0

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 1795
    :pswitch_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    .line 1797
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1799
    const/4 v1, 0x0

    .line 1800
    const/16 v0, 0x190

    .line 1821
    :cond_1
    :goto_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    rsub-int v0, v3, 0x258

    .line 1824
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    mul-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_9

    .line 1825
    mul-int/lit8 v0, v0, 0x2

    .line 1829
    :cond_2
    :goto_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1852
    :goto_3
    if-lez v0, :cond_0

    .line 1853
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->requestAnimation(FFI)V

    .line 1855
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1856
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1804
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 1806
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    .line 1807
    :goto_4
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->finalDistance:F

    .line 1814
    :goto_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v1

    .line 1816
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1817
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1702(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z

    goto :goto_1

    .line 1806
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_4

    .line 1809
    :cond_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1810
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    :goto_6
    goto :goto_5

    :cond_6
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_6

    .line 1812
    :cond_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    :goto_7
    goto :goto_5

    :cond_8
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    neg-float v1, v3

    goto :goto_7

    .line 1826
    :cond_9
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    .line 1827
    const/16 v0, 0x64

    goto/16 :goto_2

    .line 1835
    :pswitch_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->width:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    neg-float v4, v4

    mul-float v2, v3, v4

    .line 1837
    if-nez p1, :cond_a

    .line 1839
    const/4 v0, 0x0

    .line 1840
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    goto/16 :goto_3

    .line 1843
    :cond_a
    const/16 v0, 0x190

    .line 1845
    goto/16 :goto_3

    .line 1791
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sweepActionViewRemove()V
    .locals 1

    .prologue
    .line 1765
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1770
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1774
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1780
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1783
    :cond_1
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x42c8

    .line 1864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1866
    .local v8, restoreCount:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1867
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->viewTop:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1869
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 1871
    .local v7, drawSweepActionBar:Z
    :goto_0
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z

    move-result v7

    .line 1875
    :cond_0
    if-eqz v7, :cond_1

    .line 1876
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->rect:Landroid/graphics/Rect;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 1880
    :cond_1
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1882
    return-void

    .line 1869
    .end local v7           #drawSweepActionBar:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setTranslate()V
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->anim:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->moveDistance:F

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->setTranslate(F)V

    .line 1601
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1604
    :cond_0
    return-void
.end method
