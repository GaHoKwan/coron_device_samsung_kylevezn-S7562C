.class Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;
.super Ljava/lang/Object;
.source "TwDndLinearScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 882
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    const/4 v1, 0x0

    .line 885
    .local v1, delta:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v5

    #calls: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;III)I

    move-result v0

    .line 887
    .local v0, curBound:I
    if-ne v0, v7, :cond_2

    .line 888
    const/high16 v2, -0x3ee0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 893
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 894
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v2

    if-nez v2, :cond_3

    .line 895
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    invoke-virtual {v2, v1, v6}, Landroid/view/View;->scrollBy(II)V

    .line 896
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v4

    add-int/2addr v3, v4

    #calls: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V
    invoke-static {v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;II)V

    .line 905
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 908
    .end local v0           #curBound:I
    .end local v1           #delta:I
    :cond_1
    return-void

    .line 889
    .restart local v0       #curBound:I
    .restart local v1       #delta:I
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 890
    const/high16 v2, 0x4120

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0

    .line 897
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 898
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    invoke-virtual {v2, v6, v1}, Landroid/view/View;->scrollBy(II)V

    .line 899
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v4

    add-int/2addr v3, v4

    #calls: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V
    invoke-static {v2, v6, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;II)V

    goto :goto_1

    .line 901
    :cond_4
    const-string v2, "TwDndLinearScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIED Orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
