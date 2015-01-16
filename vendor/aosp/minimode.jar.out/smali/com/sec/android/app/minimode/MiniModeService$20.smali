.class Lcom/sec/android/app/minimode/MiniModeService$20;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initOverlayFrameWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field location:[I

.field mX:F

.field mY:F

.field originBodyHeight:I

.field originBodyWidth:I

.field originHeight:I

.field originWidth:I

.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1552
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->originWidth:I

    .line 1554
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->originHeight:I

    .line 1555
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->originBodyWidth:I

    .line 1556
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->originBodyHeight:I

    .line 1557
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->mX:F

    .line 1558
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->mY:F

    .line 1560
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->location:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1564
    const/4 v15, 0x0

    .line 1565
    .local v15, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 1566
    .local v10, action:I
    packed-switch v10, :pswitch_data_0

    .line 1691
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 1568
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1571
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mX:F

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mY:F

    .line 1573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v5, v5, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originWidth:I

    .line 1576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v5, v5, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originHeight:I

    .line 1577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originBodyWidth:I

    .line 1578
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originBodyHeight:I

    .line 1582
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->location:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$4002(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1584
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->location:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->location:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1593
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1594
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 1595
    .local v13, curX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    .line 1596
    .local v14, curY:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mX:F

    sub-float v5, v13, v5

    float-to-int v0, v5

    move/from16 v20, v0

    .line 1597
    .local v20, vectorX:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mY:F

    sub-float v5, v14, v5

    float-to-int v0, v5

    move/from16 v21, v0

    .line 1600
    .local v21, vectorY:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originWidth:I

    add-int v6, v5, v20

    .line 1601
    .local v6, w:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originHeight:I

    add-int v7, v5, v21

    .line 1602
    .local v7, h:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originBodyWidth:I

    add-int v8, v5, v20

    .line 1603
    .local v8, bW:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originBodyHeight:I

    add-int v9, v5, v21

    .line 1605
    .local v9, bH:I
    if-lez v8, :cond_3

    if-lez v9, :cond_3

    .line 1606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    .line 1607
    .local v19, minWidth:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 1608
    .local v18, minHeight:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 1609
    .local v17, maxWidth:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 1610
    .local v16, maxHeight:I
    const/4 v12, 0x0

    .line 1611
    .local v12, calibW:I
    const/4 v11, 0x0

    .line 1612
    .local v11, calibH:I
    if-eqz v19, :cond_6

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 1613
    sub-int v12, v8, v19

    .line 1617
    :cond_1
    :goto_1
    sub-int/2addr v8, v12

    .line 1618
    sub-int/2addr v6, v12

    .line 1620
    if-eqz v18, :cond_7

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 1621
    sub-int v11, v9, v18

    .line 1625
    :cond_2
    :goto_2
    sub-int/2addr v9, v11

    .line 1626
    sub-int/2addr v7, v11

    .line 1628
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;-><init>(Lcom/sec/android/app/minimode/MiniModeService;IIII)V

    .line 1632
    .local v4, moveParam:Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
    iput v6, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1633
    iput v7, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1636
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1642
    .end local v4           #moveParam:Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
    .end local v11           #calibH:I
    .end local v12           #calibW:I
    .end local v16           #maxHeight:I
    .end local v17           #maxWidth:I
    .end local v18           #minHeight:I
    .end local v19           #minWidth:I
    :cond_3
    const/4 v5, 0x1

    if-ne v10, v5, :cond_0

    .line 1643
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$4502(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1644
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1649
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4700(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$2500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$2500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$4802(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$2500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1656
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5, v15}, Lcom/sec/android/app/minimode/MiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1660
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mX:F

    .line 1661
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mY:F

    .line 1662
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originWidth:I

    .line 1663
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originHeight:I

    .line 1665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1614
    .restart local v11       #calibH:I
    .restart local v12       #calibW:I
    .restart local v16       #maxHeight:I
    .restart local v17       #maxWidth:I
    .restart local v18       #minHeight:I
    .restart local v19       #minWidth:I
    :cond_6
    if-eqz v17, :cond_1

    move/from16 v0, v17

    if-le v8, v0, :cond_1

    .line 1615
    sub-int v12, v8, v17

    goto/16 :goto_1

    .line 1622
    :cond_7
    if-eqz v16, :cond_2

    move/from16 v0, v16

    if-le v9, v0, :cond_2

    .line 1623
    sub-int v11, v9, v16

    goto/16 :goto_2

    .line 1677
    .end local v6           #w:I
    .end local v7           #h:I
    .end local v8           #bW:I
    .end local v9           #bH:I
    .end local v11           #calibH:I
    .end local v12           #calibW:I
    .end local v13           #curX:F
    .end local v14           #curY:F
    .end local v16           #maxHeight:I
    .end local v17           #maxWidth:I
    .end local v18           #minHeight:I
    .end local v19           #minWidth:I
    .end local v20           #vectorX:I
    .end local v21           #vectorY:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1685
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mX:F

    .line 1686
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->mY:F

    .line 1687
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originWidth:I

    .line 1688
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$20;->originHeight:I

    goto/16 :goto_0

    .line 1566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
