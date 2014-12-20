.class Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 9022
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9022
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    const v8, 0x3ecccccd

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 9024
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 9102
    :cond_0
    :goto_0
    return-void

    .line 9026
    :pswitch_0
    const/4 v1, 0x0

    .line 9028
    .local v1, offset:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5302(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 9029
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x3e8

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5402(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 9031
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 9034
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-le v4, v7, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ge v4, v9, :cond_2

    .line 9035
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 9043
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 9044
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, -0x1

    .line 9049
    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9053
    if-gez v1, :cond_6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 9056
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 9057
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9036
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-lt v4, v9, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 9037
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto :goto_1

    .line 9038
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 9039
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    .line 9041
    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    .line 9046
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, 0x1

    goto/16 :goto_2

    .line 9059
    :cond_6
    if-lez v1, :cond_8

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 9063
    :cond_7
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 9064
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9067
    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 9068
    .local v2, overscrollMode:I
    if-eqz v2, :cond_9

    if-ne v2, v3, :cond_a

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    move v0, v3

    .line 9071
    .local v0, canOverscroll:Z
    :cond_a
    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 9072
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v7, :cond_f

    .line 9073
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9074
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 9075
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 9084
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_d

    .line 9086
    :cond_c
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 9089
    :cond_d
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    .line 9092
    :cond_e
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9093
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    goto/16 :goto_0

    .line 9077
    :cond_f
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 9078
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 9079
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 9080
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_3

    .line 9024
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
