.class Lcom/android/mms/data/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 507
    const-string v4, "Mms/Conversation"

    const-string v5, "markAsRead() thread"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v4, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 511
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z
    invoke-static {v5}, Lcom/android/mms/data/Conversation;->access$300(Lcom/android/mms/data/Conversation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 512
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 516
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 520
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 521
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v7, "(read=0)"

    invoke-static {v2, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    move v1, v3

    .line 523
    .local v1, needUpdate:Z
    :cond_1
    if-eqz v1, :cond_4

    .line 524
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/Conversation;->getReadContentValues()Landroid/content/ContentValues;
    invoke-static {v6}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "(read=0)"

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 525
    .local v0, affectedRows:I
    const-string v5, "Mms/Conversation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update read for thread uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",affected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v0           #affectedRows:I
    :goto_1
    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    const/4 v6, 0x0

    #calls: Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V
    invoke-static {v5, v6}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;Z)V

    .line 532
    .end local v1           #needUpdate:Z
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    iget-object v4, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->CMAS_Y:Z

    .line 543
    :cond_3
    const-string v3, "Mms/Conversation"

    const-string v4, "markAsRead() thread"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 527
    .restart local v1       #needUpdate:Z
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_4
    :try_start_3
    const-string v5, "Mms/Conversation"

    const-string v6, "nothing to update read"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 532
    .end local v1           #needUpdate:Z
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 513
    :catch_0
    move-exception v5

    goto :goto_0
.end method
