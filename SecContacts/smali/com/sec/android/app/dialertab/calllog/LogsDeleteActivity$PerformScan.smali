.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isWhichOp:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 23
    .parameter "params"

    .prologue
    .line 528
    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    .line 529
    const-string v19, "LogsDeleteActivity"

    const-string v20, "[PerformScan] Call Log delete start ....."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #calls: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->logsDBChanged()Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getCount()I

    move-result v17

    .line 533
    .local v17, totalCnt:I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    div-int/lit8 v21, v17, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 534
    const-wide/16 v19, 0x12c

    invoke-static/range {v19 .. v20}, Landroid/os/SystemClock;->sleep(J)V

    .line 536
    const-string v19, "feature_common_dsds_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 546
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 548
    const-string v19, "feature_remind_me_later_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 549
    new-instance v14, Landroid/content/Intent;

    const-string v19, "com.samsung.intent.action.CALL_REMIND"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v14, i:Landroid/content/Intent;
    const-string v19, "state"

    const-string v20, "delete_all"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v19, "numbers"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 692
    .end local v14           #i:Landroid/content/Intent;
    .end local v17           #totalCnt:I
    :cond_0
    :goto_1
    const-string v19, "LogsDeleteActivity"

    const-string v20, "[PerformScan] Call Log delete end ....."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/16 v19, 0x0

    return-object v19

    .line 541
    .restart local v17       #totalCnt:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 556
    .end local v17           #totalCnt:I
    :cond_2
    const/4 v6, 0x0

    .line 557
    .local v6, colIdx:I
    const/4 v10, 0x0

    .line 558
    .local v10, dataId:I
    const/4 v9, 0x0

    .line 559
    .local v9, dataCnt:I
    const/4 v12, 0x0

    .line 560
    .local v12, endComma:Z
    const/4 v11, 0x0

    .line 561
    .local v11, deletedCnt:I
    const/4 v3, 0x0

    .line 563
    .local v3, checkedPos:I
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 564
    .local v18, whereLogsDB:Ljava/lang/StringBuffer;
    const-string v19, "_id in ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 567
    .local v5, checkedRemindMeNumbers:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 569
    .local v4, checkedRemindMeDates:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    .line 571
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_c

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/Cursor;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$902(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const-string v20, "_id"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 577
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I)V

    .line 578
    .local v7, compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 581
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupCount()I

    move-result v8

    .line 582
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupIDs()[I

    move-result-object v2

    .line 586
    .local v2, array:[I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-ge v14, v8, :cond_5

    .line 588
    aget v10, v2, v14

    .line 589
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 591
    const-string v19, "LogsDeleteActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dataId= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3
    rem-int/lit8 v19, v9, 0x64

    if-nez v19, :cond_4

    .line 594
    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 600
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 601
    const-string v19, "_id in ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    const/4 v12, 0x0

    .line 603
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 586
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 605
    :cond_4
    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 606
    const/4 v12, 0x1

    goto :goto_4

    .line 610
    :cond_5
    const-string v19, "feature_remind_me_later_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 612
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupDates()[J

    move-result-object v13

    .line 614
    .local v13, groupDates:[J
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v8, :cond_9

    .line 615
    aget-wide v19, v13, v14

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_6

    .line 616
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-nez v19, :cond_7

    .line 617
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    aget-wide v19, v13, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 614
    :cond_6
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 620
    :cond_7
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 621
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 624
    aget-wide v19, v13, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 632
    .end local v2           #array:[I
    .end local v8           #count:I
    .end local v13           #groupDates:[J
    .end local v14           #i:I
    .end local v15           #index:I
    .end local v16           #number:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 633
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    rem-int/lit8 v19, v9, 0x64

    if-nez v19, :cond_a

    .line 636
    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 642
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 643
    const-string v19, "_id in ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    const/4 v12, 0x0

    .line 645
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 651
    :goto_7
    const-string v19, "feature_remind_me_later_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x1f

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-lez v19, :cond_9

    .line 654
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-nez v19, :cond_b

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 571
    .end local v7           #compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_9
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 647
    .restart local v7       #compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_a
    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 648
    const/4 v12, 0x1

    goto :goto_7

    .line 658
    :cond_b
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 669
    .end local v7           #compareObject:Lcom/sec/android/app/dialertab/calllog/GroupCount;
    :cond_c
    if-eqz v12, :cond_e

    .line 670
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 671
    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 674
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 675
    const-string v19, "LogsDeleteActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 679
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 681
    const-string v19, "feature_remind_me_later_support "

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 682
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 683
    new-instance v14, Landroid/content/Intent;

    const-string v19, "com.samsung.intent.action.CALL_REMIND"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v14, i:Landroid/content/Intent;
    const-string v19, "state"

    const-string v20, "delete"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v19, "numbers"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v19, "date"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 523
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    const v3, 0x7f0d035b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 708
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    if-ne v0, v2, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 718
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 719
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 699
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 700
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 523
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
