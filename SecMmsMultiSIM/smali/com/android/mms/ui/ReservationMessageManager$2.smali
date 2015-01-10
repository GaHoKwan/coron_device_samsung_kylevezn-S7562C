.class Lcom/android/mms/ui/ReservationMessageManager$2;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager;->initEtc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    .line 515
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$000(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x1

    .line 517
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, idxMsgType:I
    const/4 v3, 0x1

    .line 520
    .local v3, idxMsgId:I
    const-wide/16 v5, 0x0

    .line 521
    .local v5, msgId:J
    const-string v7, "sms"

    .line 523
    .local v7, msgType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 524
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 526
    :cond_0
    const/4 v4, 0x0

    .line 527
    const/4 v3, 0x1

    .line 529
    :try_start_0
    const-string v8, "transport_type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 530
    const-string v8, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 534
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 535
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 537
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 538
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 543
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$000(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 545
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->updateCheckedMsgCount()V
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$200(Lcom/android/mms/ui/ReservationMessageManager;)V

    .line 547
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/ReservationMessageListAdapter;->notifyDataSetChanged()V

    .line 548
    return-void

    .line 515
    .end local v0           #checked:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    .restart local v0       #checked:Z
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #idxMsgId:I
    .restart local v4       #idxMsgType:I
    .restart local v5       #msgId:J
    .restart local v7       #msgType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 532
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "colsMap"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$2;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/ReservationMessageListAdapter;->clearCheckedList()V

    goto :goto_2
.end method
