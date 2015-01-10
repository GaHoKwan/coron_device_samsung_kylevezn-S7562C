.class public Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;
.super Landroid/os/AsyncTask;
.source "CallDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 1822
    const-string v11, "CallDetailFragment"

    const-string v12, "[PerformScan] Call Log delete start ....."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v3, 0x0

    .line 1825
    .local v3, colIdx:I
    const/4 v5, 0x0

    .line 1826
    .local v5, dataId:I
    const/4 v4, 0x1

    .line 1827
    .local v4, dataCnt:I
    const/4 v7, 0x0

    .line 1828
    .local v7, endComma:Z
    const/4 v6, 0x0

    .line 1829
    .local v6, deletedCnt:I
    const/4 v0, 0x0

    .line 1832
    .local v0, checkedPos:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1833
    .local v2, checkedRemindMeNumbers:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1835
    .local v1, checkedRemindMeDates:Ljava/lang/StringBuffer;
    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "logtype"

    aput-object v12, v9, v11

    .line 1839
    .local v9, projection:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1840
    .local v10, whereLogsDB:Ljava/lang/StringBuffer;
    const-string v11, "_id in ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1842
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v11

    iget v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1843
    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1844
    const/4 v7, 0x1

    .line 1846
    const-string v11, "feature_remind_me_later_support "

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1847
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v11

    iget v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    if-lez v11, :cond_0

    .line 1848
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 1849
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1850
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v11

    iget-wide v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1861
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 1862
    const/4 v11, 0x1

    sput-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    .line 1867
    :goto_1
    if-eqz v7, :cond_2

    .line 1868
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1869
    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1870
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1872
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3200()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1873
    const-string v11, "CallDetailFragment"

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

    .line 1874
    :cond_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 1876
    :cond_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 1878
    const-string v11, "feature_remind_me_later_support "

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1879
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1880
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.samsung.intent.action.CALL_REMIND"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v8, i:Landroid/content/Intent;
    const-string v11, "state"

    const-string v12, "delete"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    const-string v11, "numbers"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    const-string v11, "date"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1890
    .end local v8           #i:Landroid/content/Intent;
    :cond_3
    const/4 v11, 0x0

    return-object v11

    .line 1852
    :cond_4
    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1853
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1855
    const/16 v11, 0x2c

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1856
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    invoke-static {v11}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v11

    iget-wide v11, v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1864
    :cond_5
    const/4 v11, 0x1

    sput-boolean v11, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1818
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
