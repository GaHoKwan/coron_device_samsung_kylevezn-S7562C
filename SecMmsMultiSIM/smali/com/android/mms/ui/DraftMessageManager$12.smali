.class Lcom/android/mms/ui/DraftMessageManager$12;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
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
    .line 1473
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 15
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1475
    .local p1, l:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const-string v12, "Mms/DraftMessageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onListItemClick(),position="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p4

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const v12, 0x7f0e00d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    sput-object v12, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    .line 1478
    sget-object v12, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v12, :cond_0

    .line 1479
    sget-object v12, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 1482
    :cond_0
    const/4 v8, 0x1

    .line 1483
    .local v8, isOpen:Z
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v12}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v12

    if-lez v12, :cond_4

    .line 1484
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 1485
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    if-gez v12, :cond_2

    .line 1513
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1487
    .restart local v4       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v7, 0x0

    .line 1488
    .local v7, idxMsgType:I
    const/4 v6, 0x1

    .line 1490
    .local v6, idxMsgId:I
    :try_start_0
    const-string v12, "transport_type"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1491
    const-string v12, "_id"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1495
    :goto_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1496
    .local v11, msgType:Ljava/lang/String;
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1498
    .local v9, msgId:J
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12, v9, v10, v11}, Lcom/android/mms/ui/DraftMessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v8

    .line 1499
    const v12, 0x7f0e00db

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1500
    .local v2, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1502
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

    move-result v3

    .line 1503
    .local v3, checkedCount:I
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v12

    if-ne v3, v12, :cond_3

    .line 1504
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/CheckBox;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1508
    :goto_2
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->updateCheckedMsgCount()V
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)V

    goto :goto_0

    .line 1492
    .end local v2           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #checkedCount:I
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1493
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "colsMap"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1506
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #checkBox:Landroid/widget/CheckBox;
    .restart local v3       #checkedCount:I
    .restart local v9       #msgId:J
    .restart local v11       #msgType:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v12}, Lcom/android/mms/ui/DraftMessageManager;->access$100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/CheckBox;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1511
    .end local v2           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #checkedCount:I
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v6           #idxMsgId:I
    .end local v7           #idxMsgType:I
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/mms/ui/DraftMessageManager$12;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    move/from16 v0, p3

    #calls: Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V
    invoke-static {v12, v0}, Lcom/android/mms/ui/DraftMessageManager;->access$2200(Lcom/android/mms/ui/DraftMessageManager;I)V

    goto :goto_0
.end method
