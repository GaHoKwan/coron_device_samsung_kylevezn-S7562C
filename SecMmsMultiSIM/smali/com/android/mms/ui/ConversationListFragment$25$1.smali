.class Lcom/android/mms/ui/ConversationListFragment$25$1;
.super Ljava/lang/Thread;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$25;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$25;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$25;)V
    .locals 0
    .parameter

    .prologue
    .line 3532
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$25$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$25;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 3539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$25$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$25;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 3540
    .local v17, moveHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 3541
    .local v18, moveIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3546
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 3547
    .local v20, threadId:J
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v2

    .line 3550
    .local v5, QUERY_PROJECTION:[Ljava/lang/String;
    const-string v6, "(thread_id = ? AND NOT(type = 4 OR type = 5 OR type = 6))"

    .line 3551
    .local v6, whereSql:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 3554
    .local v7, whereArgs:[Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 3555
    .local v4, tableUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3556
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3557
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 3559
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 3560
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3563
    :cond_0
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/mms/util/SecurityMailboxUtils;->moveConversationFromSMSTable(J)Z

    .line 3565
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 3568
    :cond_1
    if-eqz v15, :cond_2

    .line 3569
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3576
    :cond_2
    const-string v6, "(thread_id = ? and not(( m_type = ?) or (msg_box = 4) or (msg_box = 200)))"

    .line 3577
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x1

    const/16 v8, 0x82

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 3580
    .restart local v7       #whereArgs:[Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 3581
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object v12, v6

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3584
    .local v16, mms_cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_5

    .line 3586
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 3587
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3589
    :cond_3
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v8, v9}, Lcom/android/mms/util/SecurityMailboxUtils;->moveConversationFromMMSTable(JJ)Z

    .line 3591
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 3594
    :cond_4
    if-eqz v16, :cond_5

    .line 3595
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3598
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$25$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$25;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v8, 0x7b

    invoke-static {v2, v8}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3603
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 3604
    .local v19, msg:Landroid/os/Message;
    const/16 v2, 0x3e8

    move-object/from16 v0, v19

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$25$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$25;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->messageHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3568
    .end local v16           #mms_cursor:Landroid/database/Cursor;
    .end local v19           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_6

    .line 3569
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 3594
    .restart local v16       #mms_cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    if-eqz v16, :cond_7

    .line 3595
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 3612
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #tableUri:Landroid/net/Uri;
    .end local v5           #QUERY_PROJECTION:[Ljava/lang/String;
    .end local v6           #whereSql:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #mms_cursor:Landroid/database/Cursor;
    .end local v20           #threadId:J
    :cond_8
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 3613
    return-void
.end method
