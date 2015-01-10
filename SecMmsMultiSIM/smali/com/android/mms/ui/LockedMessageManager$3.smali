.class Lcom/android/mms/ui/LockedMessageManager$3;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->initEtc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    .line 536
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x1

    .line 538
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 539
    const/4 v4, 0x0

    .line 540
    .local v4, idxMsgType:I
    const/4 v3, 0x1

    .line 541
    .local v3, idxMsgId:I
    const-wide/16 v5, 0x0

    .line 542
    .local v5, msgId:J
    const-string v7, "sms"

    .line 544
    .local v7, msgType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 545
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 547
    :cond_0
    const/4 v4, 0x0

    .line 548
    const/4 v3, 0x1

    .line 550
    :try_start_0
    const-string v8, "transport_type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 551
    const-string v8, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 555
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 556
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 558
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/mms/ui/LockedMessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 559
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 564
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 566
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->updateCheckedMsgCount()V
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)V

    .line 568
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    .line 569
    return-void

    .line 536
    .end local v0           #checked:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    .restart local v0       #checked:Z
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #idxMsgId:I
    .restart local v4       #idxMsgType:I
    .restart local v5       #msgId:J
    .restart local v7       #msgType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 553
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "colsMap"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 562
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/LockedMessageManager$3;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/LockedMessageManager;->access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/LockedMessageListAdapter;->clearCheckedList()V

    goto :goto_2
.end method
