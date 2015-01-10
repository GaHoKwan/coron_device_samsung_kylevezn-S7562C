.class Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;
.super Ljava/lang/Thread;
.source "RejectCallWithMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateContentsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 438
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v7, "_id desc"

    .line 439
    .local v7, sortOrder:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/RejectCallWithMsgContent;->access$600()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 440
    .local v10, cur:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 441
    .local v20, rejectMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 443
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 444
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 445
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 446
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$302(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_0
    if-nez v10, :cond_1

    .line 451
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "rejectmsg cursor is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 455
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$700(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$700(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    :cond_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 462
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 463
    .local v15, id:J
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 464
    .local v12, edited:I
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_4
    const/4 v3, 0x1

    if-ne v12, v3, :cond_7

    const/16 v17, 0x1

    .line 468
    .local v17, isChanged:Z
    :goto_1
    if-eqz v17, :cond_8

    .line 469
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "Edited"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 470
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 485
    :goto_2
    if-eqz v20, :cond_5

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 489
    .end local v12           #edited:I
    .end local v15           #id:J
    .end local v17           #isChanged:Z
    :cond_6
    const/16 v19, 0x0

    .line 490
    .local v19, msg:Landroid/os/Message;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_b

    .line 491
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$700(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v6, v6, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v14, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 496
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$700(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 467
    .end local v14           #i:I
    .end local v19           #msg:Landroid/os/Message;
    .restart local v12       #edited:I
    .restart local v15       #id:J
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 472
    .restart local v17       #isChanged:Z
    :cond_8
    const-wide/16 v3, 0x1

    sub-long v21, v15, v3

    .line 474
    .local v21, stringIdx:J
    const-string v3, "modify_reject_message"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 475
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    move-wide/from16 v0, v21

    long-to-int v4, v0

    aget-object v13, v3, v4

    .line 479
    .local v13, entryName:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v13, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 481
    const-string v3, "RejectCallWithMsgContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 506
    .end local v12           #edited:I
    .end local v13           #entryName:Ljava/lang/String;
    .end local v15           #id:J
    .end local v17           #isChanged:Z
    .end local v21           #stringIdx:J
    :catch_0
    move-exception v11

    .line 507
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "RejectCallWithMsgContent"

    const-string v4, "rejectmsg exception"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 477
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v12       #edited:I
    .restart local v15       #id:J
    .restart local v17       #isChanged:Z
    .restart local v21       #stringIdx:J
    :cond_9
    :try_start_2
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    move-wide/from16 v0, v21

    long-to-int v4, v0

    aget-object v13, v3, v4

    .restart local v13       #entryName:Ljava/lang/String;
    goto :goto_5

    .line 494
    .end local v12           #edited:I
    .end local v13           #entryName:Ljava/lang/String;
    .end local v15           #id:J
    .end local v17           #isChanged:Z
    .end local v21           #stringIdx:J
    .restart local v14       #i:I
    .restart local v19       #msg:Landroid/os/Message;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$700(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v6, v6, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    goto/16 :goto_4

    .line 498
    :cond_b
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_c

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v3, v3, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_6
    const/4 v3, 0x5

    if-gt v14, v3, :cond_c

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 502
    .local v18, item:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 509
    .end local v18           #item:Landroid/widget/LinearLayout;
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14           #i:I
    .end local v19           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
.end method
