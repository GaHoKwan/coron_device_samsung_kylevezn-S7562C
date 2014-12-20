.class Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 2592
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwScrollView;Lcom/sec/android/touchwiz/widget/TwScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2592
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const v9, 0x3ecccccd

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 2594
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2667
    :cond_0
    :goto_0
    return-void

    .line 2597
    :pswitch_0
    const/4 v1, 0x0

    .line 2598
    .local v1, offset:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v3

    .line 2600
    .local v3, range:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$202(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    .line 2601
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$302(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    .line 2603
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2606
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-le v5, v8, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_1

    .line 2607
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    .line 2615
    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 2616
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    .line 2621
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2625
    if-gez v1, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-lez v5, :cond_5

    .line 2626
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 2627
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2608
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 2609
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    goto :goto_1

    .line 2610
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 2611
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    goto :goto_1

    .line 2613
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I

    goto/16 :goto_1

    .line 2618
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_2

    .line 2628
    :cond_5
    if-lez v1, :cond_6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 2629
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 2630
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2633
    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 2634
    .local v2, overscrollMode:I
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_8

    if-lez v3, :cond_8

    :cond_7
    move v0, v4

    .line 2637
    .local v0, canOverscroll:Z
    :cond_8
    if-eqz v0, :cond_c

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2638
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_d

    .line 2639
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 2640
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2641
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 2650
    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2652
    :cond_a
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2654
    :cond_b
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z

    .line 2657
    :cond_c
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2658
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z

    goto/16 :goto_0

    .line 2643
    :cond_d
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 2644
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 2645
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2646
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_3

    .line 2594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
