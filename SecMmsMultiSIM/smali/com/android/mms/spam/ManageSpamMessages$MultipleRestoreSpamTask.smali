.class Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;
.super Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;
.source "ManageSpamMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultipleRestoreSpamTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 5
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1280
    .local p2, positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .local v2, paramsAsList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1282
    .local v3, pos:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1283
    invoke-static {p1}, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->bundleTaskParams(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1286
    .end local v3           #pos:Ljava/lang/Integer;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Landroid/os/Bundle;

    .line 1287
    .local v1, params:[Landroid/os/Bundle;
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1288
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "isSuccess"

    .prologue
    .line 1298
    invoke-super {p0, p1}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    .line 1299
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1000(Lcom/android/mms/spam/ManageSpamMessages;)V

    .line 1302
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1700(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1304
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1278
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1292
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1293
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    const v1, 0x7f0a0369

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->showProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$1400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    .line 1294
    return-void
.end method
