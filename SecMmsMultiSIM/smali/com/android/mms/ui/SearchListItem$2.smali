.class Lcom/android/mms/ui/SearchListItem$2;
.super Landroid/os/Handler;
.source "SearchListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 554
    const-string v5, "Mms/SearchListListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In Handler:Position is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 556
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 557
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "thread_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 558
    .local v3, threadId:J
    const-wide/16 v1, -0x1

    .line 560
    .local v1, rowId:J
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-le v5, v6, :cond_0

    .line 561
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 564
    :cond_0
    const-string v5, "Mms/SearchListListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In Handler:threadId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "rowid :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$100(Lcom/android/mms/ui/SearchListItem;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 568
    const-string v5, "highlight"

    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mSearchString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$200(Lcom/android/mms/ui/SearchListItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v5, "select_id"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 570
    const-string v5, "FromSearchActivity"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    iget-object v5, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/SearchListItem;->access$100(Lcom/android/mms/ui/SearchListItem;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 573
    .end local v0           #onClickIntent:Landroid/content/Intent;
    .end local v1           #rowId:J
    .end local v3           #threadId:J
    :cond_1
    return-void
.end method
