.class Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mbIsDeleteLockedMsg:Z

.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "bIsDeleteLockedMessage"

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    iput-object p2, p0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    .line 1621
    iput-boolean p3, p0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    .line 1622
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 24
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->deleteMessage(Landroid/net/Uri;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$2500(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;)V

    .line 1705
    :goto_0
    return-void

    .line 1635
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v9, arrayDeleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v19, 0x0

    .line 1637
    .local v19, sizeCheckedMsg:I
    const/4 v12, 0x0

    .line 1639
    .local v12, deleteCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 1640
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1641
    const/4 v10, 0x0

    .line 1642
    .local v10, checked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v19

    .line 1643
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1644
    .local v20, sizeCursor:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 1645
    const/16 v16, 0x0

    .line 1646
    .local v16, idxMsgType:I
    const/4 v15, 0x1

    .line 1649
    .local v15, idxMsgId:I
    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1653
    :goto_2
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1656
    .local v21, szMessageType:Ljava/lang/String;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 1661
    :goto_3
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1663
    .local v17, lMessageId:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    if-nez v3, :cond_1

    .line 1664
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1644
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1650
    .end local v17           #lMessageId:J
    .end local v21           #szMessageType:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1651
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1657
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v21       #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 1658
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1668
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v17       #lMessageId:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v17

    move-object/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v10

    .line 1670
    if-nez v10, :cond_2

    .line 1671
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1675
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 1676
    const-string v3, "mms"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1677
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1685
    .local v6, deleteUri:Landroid/net/Uri;
    :goto_5
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1682
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_3
    sget-object v3, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #deleteUri:Landroid/net/Uri;
    goto :goto_5

    .line 1690
    .end local v6           #deleteUri:Landroid/net/Uri;
    .end local v10           #checked:Z
    .end local v14           #i:I
    .end local v15           #idxMsgId:I
    .end local v16           #idxMsgType:I
    .end local v17           #lMessageId:J
    .end local v20           #sizeCursor:I
    .end local v21           #szMessageType:Ljava/lang/String;
    :cond_4
    if-nez v12, :cond_5

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto/16 :goto_0

    .line 1693
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1696
    :cond_6
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_6
    if-ge v14, v12, :cond_9

    .line 1697
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1698
    .restart local v6       #deleteUri:Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v3

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v22, 0x0

    move/from16 v0, v19

    if-ne v0, v12, :cond_8

    const/4 v7, 0x1

    :goto_7
    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1, v7}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1696
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1699
    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 1702
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method
