.class Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 46

    .prologue
    .line 1720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2800(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1725
    :cond_0
    const-string v3, "mms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v39

    .line 1727
    .local v39, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v28, 0x0

    .line 1729
    .local v28, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2800(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v40

    .line 1730
    .local v40, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v38

    .line 1732
    .local v38, mmsUri:Landroid/net/Uri;
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1733
    .local v5, SpammsgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v4, v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "read"

    aput-object v10, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1738
    if-eqz v28, :cond_1

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1739
    const-string v3, "read"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1740
    new-instance v45, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1741
    .local v45, values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1742
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    .end local v45           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    if-eqz v28, :cond_2

    .line 1753
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1765
    .end local v5           #SpammsgUri:Landroid/net/Uri;
    .end local v28           #cursor:Landroid/database/Cursor;
    .end local v38           #mmsUri:Landroid/net/Uri;
    .end local v39           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v40           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v6

    const/16 v7, 0x70b

    new-instance v8, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    invoke-direct {v8, v3, v4, v10}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2800(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1908
    :goto_2
    return-void

    .line 1746
    .restart local v5       #SpammsgUri:Landroid/net/Uri;
    .restart local v28       #cursor:Landroid/database/Cursor;
    .restart local v38       #mmsUri:Landroid/net/Uri;
    .restart local v39       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v40       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$3000(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1749
    .end local v5           #SpammsgUri:Landroid/net/Uri;
    .end local v38           #mmsUri:Landroid/net/Uri;
    .end local v40           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v29

    .line 1750
    .local v29, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1752
    if-eqz v28, :cond_2

    .line 1753
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1752
    .end local v29           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v3

    if-eqz v28, :cond_4

    .line 1753
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 1757
    .end local v28           #cursor:Landroid/database/Cursor;
    .end local v39           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v8, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v9, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v11, v3, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v13, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    #calls: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v17}, Lcom/android/mms/ui/SpamMessageManager;->access$3100(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    .line 1760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-nez v3, :cond_2

    .line 1761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-wide v14, v7, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v4, v6, v7}, Lcom/android/mms/ui/SpamMessageManager;->access$3200(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 1780
    :cond_6
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    .local v26, arrayRestoreUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v25, arrayRestoreMTypList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v20, arrayRestoreMAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v21, arrayRestoreMBodyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .local v24, arrayRestoreMTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1786
    .local v22, arrayRestoreMReadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v23, arrayRestoreMSimSlot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v42, 0x0

    .line 1788
    .local v42, sizeCheckedMsg:I
    const/16 v41, 0x0

    .line 1790
    .local v41, restoreCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1794
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v28

    .line 1795
    .restart local v28       #cursor:Landroid/database/Cursor;
    if-eqz v28, :cond_a

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1796
    const/16 v27, 0x0

    .line 1797
    .local v27, checked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v42

    .line 1798
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v43

    .line 1799
    .local v43, sizeCursor:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_a

    .line 1800
    const/16 v32, 0x0

    .line 1801
    .local v32, idxMsgType:I
    const/16 v31, 0x1

    .line 1804
    .local v31, idxMsgId:I
    :try_start_3
    const-string v3, "transport_type"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v32

    .line 1808
    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1811
    .local v44, szMessageType:Ljava/lang/String;
    :try_start_4
    const-string v3, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v31

    .line 1816
    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1818
    .local v34, lMessageId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v34

    move-object/from16 v2, v44

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v27

    .line 1820
    if-nez v27, :cond_8

    .line 1821
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    .line 1799
    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1805
    .end local v34           #lMessageId:J
    .end local v44           #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v29

    .line 1806
    .local v29, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1812
    .end local v29           #e:Ljava/lang/IllegalArgumentException;
    .restart local v44       #szMessageType:Ljava/lang/String;
    :catch_2
    move-exception v29

    .line 1813
    .restart local v29       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1825
    .end local v29           #e:Ljava/lang/IllegalArgumentException;
    .restart local v34       #lMessageId:J
    :cond_8
    add-int/lit8 v41, v41, 0x1

    .line 1826
    const-string v3, "mms"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1827
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v34

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 1828
    .local v17, restoreUri:Landroid/net/Uri;
    const-string v3, "read"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    :goto_7
    const-string v3, "address"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    const-string v3, "body"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    const-string v3, "date"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    const-string v3, "sim_slot"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 1830
    .end local v17           #restoreUri:Landroid/net/Uri;
    :cond_9
    sget-object v3, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v34

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 1831
    .restart local v17       #restoreUri:Landroid/net/Uri;
    const-string v3, "read"

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1844
    .end local v17           #restoreUri:Landroid/net/Uri;
    .end local v27           #checked:Z
    .end local v30           #i:I
    .end local v31           #idxMsgId:I
    .end local v32           #idxMsgType:I
    .end local v34           #lMessageId:J
    .end local v43           #sizeCursor:I
    .end local v44           #szMessageType:Ljava/lang/String;
    :cond_a
    if-nez v41, :cond_c

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1846
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1848
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2600(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;-><init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 1857
    :cond_c
    const/16 v33, 0x0

    .local v33, j:I
    :goto_8
    move/from16 v0, v33

    move/from16 v1, v41

    if-ge v0, v1, :cond_10

    .line 1858
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 1859
    .restart local v44       #szMessageType:Ljava/lang/String;
    const-string v3, "mms"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1860
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 1861
    .restart local v17       #restoreUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v39

    .line 1863
    .restart local v39       #p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_5
    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v40

    .line 1864
    .restart local v40       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v38

    .line 1866
    .restart local v38       #mmsUri:Landroid/net/Uri;
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 1867
    new-instance v45, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1868
    .restart local v45       #values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1857
    .end local v17           #restoreUri:Landroid/net/Uri;
    .end local v38           #mmsUri:Landroid/net/Uri;
    .end local v39           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v40           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v45           #values:Landroid/content/ContentValues;
    :cond_d
    :goto_9
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    .line 1873
    .restart local v17       #restoreUri:Landroid/net/Uri;
    .restart local v38       #mmsUri:Landroid/net/Uri;
    .restart local v39       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v40       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$3000(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    .line 1875
    .end local v38           #mmsUri:Landroid/net/Uri;
    .end local v40           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_3
    move-exception v29

    .line 1876
    .local v29, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1880
    .end local v17           #restoreUri:Landroid/net/Uri;
    .end local v29           #e:Lcom/google/android/mms/MmsException;
    .end local v39           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_f
    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1881
    .local v8, szMessageAddress:Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1882
    .local v9, szMessageBody:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .line 1883
    .local v36, lMessageTime:J
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1884
    .local v13, iMessageRead:I
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1885
    .local v11, iMessageSimSlot:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    #calls: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v17}, Lcom/android/mms/ui/SpamMessageManager;->access$3100(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    .line 1888
    if-nez v13, :cond_d

    .line 1889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v8, v9, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$3200(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_9

    .line 1896
    .end local v8           #szMessageAddress:Ljava/lang/String;
    .end local v9           #szMessageBody:Ljava/lang/String;
    .end local v11           #iMessageSimSlot:I
    .end local v13           #iMessageRead:I
    .end local v36           #lMessageTime:J
    .end local v44           #szMessageType:Ljava/lang/String;
    :cond_10
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_a
    move/from16 v0, v30

    move/from16 v1, v41

    if-ge v0, v1, :cond_13

    .line 1897
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 1898
    .restart local v17       #restoreUri:Landroid/net/Uri;
    if-eqz v17, :cond_11

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v14

    const/16 v15, 0x70b

    new-instance v16, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v6, 0x0

    move/from16 v0, v42

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1896
    :cond_11
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 1899
    :cond_12
    const/4 v3, 0x0

    goto :goto_b

    .line 1903
    .end local v17           #restoreUri:Landroid/net/Uri;
    :cond_13
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1904
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2
.end method
