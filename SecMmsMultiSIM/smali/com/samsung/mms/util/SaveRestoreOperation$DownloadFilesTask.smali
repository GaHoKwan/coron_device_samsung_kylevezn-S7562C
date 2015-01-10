.class Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 1
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 732
    const-string v4, "Mms/SaveRestoreOperation"

    const-string v7, "Inside  doInBackground called !!!"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v3, values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    .line 735
    .local v2, success:Z
    const/4 v1, 0x0

    .line 737
    .local v1, insertResult:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 738
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 740
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 752
    :goto_1
    return-object v4

    .line 741
    :cond_0
    new-array v4, v6, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 742
    const-string v7, "address"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v7, "date"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    const-string v7, "read"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string v7, "type"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v7, "body"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v7, "thread_id"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v8

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    const-string v7, "locked"

    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getLocked()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    iget-object v4, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v7, v8, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 750
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    move v2, v5

    .line 738
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v2, v6

    .line 750
    goto :goto_2

    .line 752
    :cond_3
    if-eqz v2, :cond_4

    const/4 v4, 0x4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x5

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 769
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "DownloadFile onCancelled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1600(Lcom/samsung/mms/util/SaveRestoreOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1600(Lcom/samsung/mms/util/SaveRestoreOperation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1700(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1700(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    :cond_1
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 762
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "DownloadFile task onPostExecute"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1600(Lcom/samsung/mms/util/SaveRestoreOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
    invoke-static {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1700(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1700(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 714
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 715
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a04fc

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 716
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 718
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 719
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 720
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask$1;

    invoke-direct {v3, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask$1;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 729
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 759
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
