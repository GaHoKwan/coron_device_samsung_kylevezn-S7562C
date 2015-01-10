.class Lcom/android/mms/ui/DraftMessageManager$3;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->initEtc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    .line 488
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x1

    .line 490
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 491
    const/4 v4, 0x0

    .line 492
    .local v4, idxMsgType:I
    const/4 v3, 0x1

    .line 493
    .local v3, idxMsgId:I
    const-wide/16 v5, 0x0

    .line 494
    .local v5, msgId:J
    const-string v7, "sms"

    .line 496
    .local v7, msgType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 497
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 499
    :cond_0
    const/4 v4, 0x0

    .line 500
    const/4 v3, 0x1

    .line 502
    :try_start_0
    const-string v8, "transport_type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 503
    const-string v8, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 507
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 508
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 510
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/mms/ui/DraftMessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 511
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 516
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 518
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->updateCheckedMsgCount()V
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)V

    .line 520
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/DraftMessageListAdapter;->notifyDataSetChanged()V

    .line 521
    return-void

    .line 488
    .end local v0           #checked:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    .restart local v0       #checked:Z
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #idxMsgId:I
    .restart local v4       #idxMsgType:I
    .restart local v5       #msgId:J
    .restart local v7       #msgType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 505
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "colsMap"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 514
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$3;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    goto :goto_2
.end method
