.class Lcom/android/mms/data/WorkingMessage$3;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2824
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2827
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v13

    .line 2828
    .local v13, threadId:J
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v8}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2830
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V
    invoke-static {v0, v13, v14, v1}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;JZ)V

    .line 2831
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2832
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    #calls: Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    invoke-static {v1, v2, v4}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$302(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2858
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2860
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 2867
    :cond_0
    return-void

    .line 2836
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v0

    int-to-long v11, v0

    .line 2837
    .local v11, message_size:J
    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "m_size"

    aput-object v0, v3, v1

    .line 2838
    .local v3, MMS_DRAFT_PROJECTION1:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2840
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2841
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "m_size"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2842
    if-eqz v10, :cond_3

    .line 2844
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2845
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2853
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    #calls: Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/data/WorkingMessage;->access$700(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto/16 :goto_0

    .line 2848
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method
