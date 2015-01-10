.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 624
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    .line 625
    const-string v11, "CallDetailDeleteActivity"

    const-string v12, "[PerformScan] Call Log delete start ....."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v3, 0x0

    .line 628
    .local v3, colIdx:I
    const/4 v5, 0x0

    .line 629
    .local v5, dataId:I
    const/4 v4, 0x0

    .line 630
    .local v4, dataCnt:I
    const/4 v7, 0x0

    .line 631
    .local v7, endComma:Z
    const/4 v6, 0x0

    .line 632
    .local v6, deletedCnt:I
    const/4 v0, 0x0

    .line 635
    .local v0, checkedPos:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 636
    .local v2, checkedRemindMeNumbers:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 638
    .local v1, checkedRemindMeDates:Ljava/lang/StringBuffer;
    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "logtype"

    aput-object v12, v9, v11

    .line 642
    .local v9, projection:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 643
    .local v10, whereLogsDB:Ljava/lang/StringBuffer;
    const-string v11, "_id in ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    const/4 v4, 0x0

    :goto_0
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 646
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 647
    const-string v11, "CallDetailDeleteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PerformScan] checkedPos : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    iget v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 650
    const/4 v7, 0x1

    .line 652
    const-string v11, "feature_remind_me_later_support "

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 653
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    iget v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    if-lez v11, :cond_0

    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 655
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 656
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    iget-wide v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 645
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 658
    :cond_1
    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 659
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 661
    const/16 v11, 0x2c

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 662
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    iget-wide v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 668
    :cond_2
    if-eqz v7, :cond_4

    .line 669
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 670
    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 671
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 673
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$700()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 674
    const-string v11, "CallDetailDeleteActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Logs DB remained data deleted Count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_3
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 677
    :cond_4
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 679
    const-string v11, "feature_remind_me_later_support "

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 680
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 681
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.samsung.intent.action.CALL_REMIND"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v8, i:Landroid/content/Intent;
    const-string v11, "state"

    const-string v12, "delete"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v11, "numbers"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v11, "date"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 691
    .end local v8           #i:Landroid/content/Intent;
    :cond_5
    const/4 v11, 0x0

    return-object v11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 619
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 706
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 713
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 714
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0d035b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 697
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 698
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 619
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
