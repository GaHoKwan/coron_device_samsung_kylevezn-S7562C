.class Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;
.super Ljava/lang/Object;
.source "TwBounceController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BounceScrollRunnableDefault"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BounceScrollRunnableDefault"


# instance fields
.field mBounceDuration:F

.field mBounceExtentCoef:F

.field private mStartFromDrag:Z

.field private mStartTime:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwBounceController;)V
    .locals 1
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 650
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 659
    return-void
.end method

.method private computeBounceExtent(F)F
    .locals 3
    .parameter "timeFraction"

    .prologue
    .line 715
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mTweener:Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    invoke-interface {v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;->compute(ZF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 762
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 727
    .local v0, tNow:J
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    div-float v2, v3, v4

    .line 729
    .local v2, timeFraction:F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->computeBounceExtent(F)F

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 741
    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 742
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 744
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    .line 745
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 746
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->cancel()V

    .line 751
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 758
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 757
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public start(F)V
    .locals 11
    .parameter "flingSpeed"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v4, -0x4080

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 663
    const-string v3, "BounceScrollRunnableDefault"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), mBounceExtent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->cancel()V

    .line 669
    cmpl-float v3, p1, v7

    if-nez v3, :cond_2

    .line 670
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 672
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mOrientation:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$000(Lcom/sec/android/touchwiz/widget/TwBounceController;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    div-float v0, v4, v3

    .line 675
    .local v0, extentRatio:F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v4

    aget v4, v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v4

    aget v4, v4, v8

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 678
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 705
    .end local v0           #extentRatio:F
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartTime:J

    .line 707
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 710
    const-string v3, "BounceScrollRunnableDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBounceExtentCoef = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void

    .line 672
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    .line 681
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 683
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxFlingSpeed:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$300(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 684
    cmpg-float v3, p1, v7

    if-gez v3, :cond_5

    move v3, v4

    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxFlingSpeed:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$300(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    mul-float p1, v3, v5

    .line 687
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxFlingSpeed:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$300(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    div-float v2, v3, v5

    .line 689
    .local v2, speedRatio:F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v3

    const/4 v5, 0x3

    aget v3, v3, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v5

    aget v5, v5, v10

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mDurations:[I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$200(Lcom/sec/android/touchwiz/widget/TwBounceController;)[I

    move-result-object v5

    aget v5, v5, v10

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 692
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mOrientation:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$000(Lcom/sec/android/touchwiz/widget/TwBounceController;)I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_3
    int-to-float v3, v3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mMaxBounceRatio:F
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$400(Lcom/sec/android/touchwiz/widget/TwBounceController;)F

    move-result v5

    mul-float v1, v3, v5

    .line 694
    .local v1, maxBounceExtent:F
    mul-float v3, v1, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 696
    cmpl-float v3, p1, v7

    if-lez v3, :cond_4

    .line 697
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 699
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    .line 700
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb2()V

    .line 701
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb2()V

    goto/16 :goto_1

    .line 684
    .end local v1           #maxBounceExtent:F
    .end local v2           #speedRatio:F
    :cond_5
    const/high16 v3, 0x3f80

    goto :goto_2

    .line 692
    .restart local v2       #speedRatio:F
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceScrollRunnableDefault;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController;->access$100(Lcom/sec/android/touchwiz/widget/TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_3
.end method
