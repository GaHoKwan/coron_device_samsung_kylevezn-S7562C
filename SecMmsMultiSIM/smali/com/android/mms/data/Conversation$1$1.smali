.class Lcom/android/mms/data/Conversation$1$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/data/Conversation$1;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation$1;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 473
    iget-object v3, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 475
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v5, "(seen=0)"

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 477
    .local v1, needUpdate:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 478
    iget-object v3, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v4, v4, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/Conversation;->getSeenContentValues()Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "(seen=0)"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 479
    .local v0, affectedRows:I
    const-string v3, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update seen for thread uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v5, v5, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",affected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v0           #affectedRows:I
    .end local v1           #needUpdate:Z
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-void

    .line 475
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 481
    .restart local v1       #needUpdate:Z
    :cond_2
    const-string v3, "Mms/Conversation"

    const-string v4, "nothing to update seen"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
