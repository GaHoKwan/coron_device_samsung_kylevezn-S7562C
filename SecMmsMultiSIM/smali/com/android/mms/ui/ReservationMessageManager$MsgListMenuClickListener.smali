.class final Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1601
    iput-object p3, p0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1602
    iput-object p2, p0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1603
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 1606
    const-string v2, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemClick(),item="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1609
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$400(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 1610
    :cond_0
    const/4 v2, 0x0

    .line 1709
    :goto_0
    return v2

    .line 1612
    :cond_1
    new-instance v1, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1613
    .local v1, messageOptions:Lcom/android/mms/ui/MessageOptions;
    const/4 v10, 0x0

    .line 1615
    .local v10, conv:Lcom/android/mms/data/Conversation;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1709
    const/4 v2, 0x0

    goto :goto_0

    .line 1620
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0011

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1621
    const/16 v16, 0x0

    .line 1623
    .local v16, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v16, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 1628
    .local v19, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v18, sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1631
    .local v11, count:I
    if-eqz v19, :cond_4

    .line 1632
    move-object/from16 v9, v19

    .local v9, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v15, v9

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    if-ge v13, v15, :cond_3

    aget-object v17, v9, v13

    .line 1633
    .local v17, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v11, :cond_2

    .line 1634
    const-string v2, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    add-int/lit8 v11, v11, 0x1

    .line 1632
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1624
    .end local v9           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #count:I
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v17           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v19           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v12

    .line 1625
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "Failed to load the message: "

    invoke-static {v2, v3, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1639
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .restart local v9       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v11       #count:I
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    .restart local v19       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1663
    .end local v9           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v16           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v19           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v8, address:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    invoke-static {v2, v4, v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$2400(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    .line 1664
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1642
    .end local v8           #address:Ljava/lang/String;
    .restart local v16       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v19       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a016f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #address:Ljava/lang/String;
    goto :goto_3

    .line 1647
    .end local v8           #address:Ljava/lang/String;
    .end local v11           #count:I
    .end local v16           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v19           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1648
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1650
    .restart local v11       #count:I
    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, arr$:[Ljava/lang/String;
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_4
    if-ge v13, v15, :cond_8

    aget-object v17, v9, v13

    .line 1651
    .local v17, recipient:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1650
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1654
    :cond_6
    if-lez v11, :cond_7

    .line 1655
    const-string v2, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1660
    .end local v17           #recipient:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #address:Ljava/lang/String;
    goto :goto_3

    .line 1667
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #count:I
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :pswitch_1
    iget-object v0, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 1668
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1669
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1671
    :cond_9
    new-instance v14, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-direct {v14, v2, v0, v3}, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V

    .line 1672
    .local v14, l:Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-boolean v3, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v2, v14, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2500(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1673
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1677
    .end local v14           #l:Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;
    .end local v20           #uri:Landroid/net/Uri;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1678
    :cond_a
    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    .line 1682
    :cond_b
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1679
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_6

    .line 1685
    :pswitch_3
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 1686
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1689
    :pswitch_4
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 1690
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1693
    :pswitch_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 1694
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1698
    :pswitch_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    .line 1699
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1704
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v10

    .line 1705
    if-nez v10, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1706
    :cond_d
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v10, v2}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 1707
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1615
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
