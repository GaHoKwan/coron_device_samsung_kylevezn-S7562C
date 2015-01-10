.class Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnKey"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "index"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    .line 517
    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    .line 518
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 18
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 522
    const/4 v13, 0x1

    .line 770
    :goto_0
    return v13

    .line 524
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_6

    .line 525
    const/16 v13, 0x42

    move/from16 v0, p2

    if-eq v0, v13, :cond_1

    const/16 v13, 0x17

    move/from16 v0, p2

    if-ne v0, v13, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_6

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$200(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "vibrator"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Vibrator;

    .line 529
    .local v12, vibrator:Landroid/os/Vibrator;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v13, :pswitch_data_0

    .line 559
    .end local v12           #vibrator:Landroid/os/Vibrator;
    :cond_2
    :pswitch_0
    const/4 v13, 0x1

    goto :goto_0

    .line 531
    .restart local v12       #vibrator:Landroid/os/Vibrator;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 532
    .local v1, audioView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_3

    .line 533
    invoke-virtual {v1}, Landroid/view/View;->showContextMenu()Z

    .line 534
    if-eqz v12, :cond_3

    .line 535
    const-wide/16 v13, 0x32

    invoke-virtual {v12, v13, v14}, Landroid/os/Vibrator;->vibrate(J)V

    .line 537
    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 540
    .end local v1           #audioView:Landroid/widget/LinearLayout;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 541
    .local v8, mediaView:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_4

    .line 542
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->showContextMenu()Z

    .line 543
    if-eqz v12, :cond_4

    .line 544
    const-wide/16 v13, 0x32

    invoke-virtual {v12, v13, v14}, Landroid/os/Vibrator;->vibrate(J)V

    .line 546
    :cond_4
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 548
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v6

    .line 549
    .local v6, locationView:Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_5

    .line 550
    invoke-virtual {v6}, Landroid/view/View;->showContextMenu()Z

    .line 551
    if-eqz v12, :cond_5

    .line 552
    const-wide/16 v13, 0x32

    invoke-virtual {v12, v13, v14}, Landroid/os/Vibrator;->vibrate(J)V

    .line 554
    :cond_5
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 564
    .end local v6           #locationView:Landroid/widget/RelativeLayout;
    .end local v12           #vibrator:Landroid/os/Vibrator;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    .line 565
    const/16 v13, 0x42

    move/from16 v0, p2

    if-eq v0, v13, :cond_7

    const/16 v13, 0x17

    move/from16 v0, p2

    if-ne v0, v13, :cond_8

    .line 566
    :cond_7
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 568
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 572
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    .line 573
    :cond_a
    const/4 v10, 0x0

    .line 574
    .local v10, msg:Landroid/os/Message;
    packed-switch p2, :pswitch_data_1

    .line 652
    .end local v10           #msg:Landroid/os/Message;
    :cond_b
    const/16 v13, 0x43

    move/from16 v0, p2

    if-ne v0, v13, :cond_19

    .line 653
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v13, :pswitch_data_2

    .line 746
    :cond_c
    :goto_1
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 576
    .restart local v10       #msg:Landroid/os/Message;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x32

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 580
    :cond_d
    if-eqz v10, :cond_e

    .line 581
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v13, :pswitch_data_3

    .line 597
    :cond_e
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 584
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v13, v13, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v13, :cond_f

    .line 585
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 586
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 588
    :pswitch_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 590
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v13, v13, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v13, :cond_10

    .line 591
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 592
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 599
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x33

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 602
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 604
    :pswitch_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v14, 0xd

    if-ne v13, v14, :cond_12

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    if-nez v13, :cond_b

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x35

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 607
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 608
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 611
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x35

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 613
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 614
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 620
    :pswitch_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v14, 0xd

    if-ne v13, v14, :cond_13

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v5

    .line 622
    .local v5, ed:Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v14

    if-ne v13, v14, :cond_b

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v13

    if-nez v13, :cond_b

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x34

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 625
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 626
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 629
    .end local v5           #ed:Landroid/widget/EditText;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x34

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 631
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 632
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 656
    .end local v10           #msg:Landroid/os/Message;
    :pswitch_b
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    #calls: Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;II)V

    goto/16 :goto_1

    .line 659
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 662
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 668
    .end local v10           #msg:Landroid/os/Message;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 671
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 676
    .end local v10           #msg:Landroid/os/Message;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 679
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 682
    .restart local v8       #mediaView:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v13, v13, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_c

    .line 683
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 699
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    .end local v10           #msg:Landroid/os/Message;
    :pswitch_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    if-nez v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    if-nez v13, :cond_15

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    .line 703
    .local v3, curslide:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 704
    .local v2, child:Landroid/view/View;
    if-eqz v2, :cond_15

    .line 705
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 706
    .local v7, locationViewPort:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v13, v13, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_15

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_15

    .line 708
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 709
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 715
    .end local v2           #child:Landroid/view/View;
    .end local v3           #curslide:I
    .end local v7           #locationViewPort:Landroid/widget/RelativeLayout;
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    if-nez v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    if-nez v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 718
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MmsRichContainer;->access$800(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;Z)Z

    move-result v13

    if-nez v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_16

    .line 719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 721
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 725
    .end local v10           #msg:Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v9

    .line 726
    .local v9, mediaViewPort:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v13, v13, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_17

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_17

    .line 727
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 730
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_c

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 733
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    const/4 v14, 0x1

    #setter for: Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/MmsRichContainer;->access$102(Lcom/android/mms/ui/MmsRichContainer;Z)Z

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v14, v13}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 737
    .restart local v10       #msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 742
    .end local v9           #mediaViewPort:Landroid/widget/RelativeLayout;
    .end local v10           #msg:Landroid/os/Message;
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 747
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v14, 0xd

    if-eq v13, v14, :cond_1c

    .line 748
    const/4 v13, 0x4

    move/from16 v0, p2

    if-eq v0, v13, :cond_1b

    const/16 v13, 0x52

    move/from16 v0, p2

    if-eq v0, v13, :cond_1b

    const/16 v13, 0xee

    move/from16 v0, p2

    if-eq v0, v13, :cond_1b

    .line 751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/ui/MmsRichContainer;->access$900(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-static {v13}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v11

    .line 756
    .local v11, sWindowSession:Landroid/view/IWindowSession;
    if-eqz v11, :cond_1a

    .line 757
    const/4 v13, 0x1

    :try_start_0
    invoke-interface {v11, v13}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_1a
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 763
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 767
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 758
    :catch_0
    move-exception v4

    .line 759
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 765
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v11           #sWindowSession:Landroid/view/IWindowSession;
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 770
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 574
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 653
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_c
    .end packed-switch

    .line 581
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
