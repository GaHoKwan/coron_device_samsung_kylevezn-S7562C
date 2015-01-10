.class Lcom/android/mms/ui/ManageSimMessages$10;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onClickDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$mArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$10;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1475
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$cursor:Landroid/database/Cursor;

    monitor-enter v3

    .line 1476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1478
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1479
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1481
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$cursor:Landroid/database/Cursor;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z
    invoke-static {v2, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$2700(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z

    .line 1476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1485
    .end local v1           #pos:I
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->completeToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$2500(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$10;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000a

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$10;->val$mArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->completeToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$2500(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1488
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$10;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$2600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1490
    return-void

    .line 1485
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
