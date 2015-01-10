.class Lcom/android/mms/spam/ManageSpamMessages$10$1;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/ManageSpamMessages$10;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages$10;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;>;"
    const/4 v4, 0x0

    .local v4, pos:I
    :goto_0
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 990
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v8, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->val$cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 991
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v8, v8, Lcom/android/mms/spam/ManageSpamMessages$10;->val$cursor:Landroid/database/Cursor;

    const-string v9, "transport_type"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, typeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->val$cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v8, v8, Lcom/android/mms/spam/ManageSpamMessages$10;->val$cursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 993
    .local v2, id:J
    new-instance v1, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;

    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {v1, v7, v2, v3, v6}, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;-><init>(Lcom/android/mms/spam/ManageSpamMessages;JLjava/lang/String;)V

    .line 994
    .local v1, entry:Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    .end local v1           #entry:Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;
    .end local v2           #id:J
    .end local v6           #typeStr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 998
    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 999
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v8, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->deleteFromSpam(Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;)V
    invoke-static {v8, v7}, Lcom/android/mms/spam/ManageSpamMessages;->access$1500(Lcom/android/mms/spam/ManageSpamMessages;Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;)V

    .line 998
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1002
    :cond_2
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V
    invoke-static {v7}, Lcom/android/mms/spam/ManageSpamMessages;->access$1000(Lcom/android/mms/spam/ManageSpamMessages;)V

    .line 1005
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1006
    .local v5, res:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->completeToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/android/mms/spam/ManageSpamMessages;->access$1600(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/Toast;

    move-result-object v7

    const v8, 0x7f0a0389

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(I)V

    .line 1009
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->completeToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/android/mms/spam/ManageSpamMessages;->access$1600(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1012
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages$10$1;->this$1:Lcom/android/mms/spam/ManageSpamMessages$10;

    iget-object v7, v7, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/mms/spam/ManageSpamMessages;->access$1700(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1014
    return-void
.end method
