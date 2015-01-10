.class Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;
.super Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;
.source "ManageSpamMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleRestoreSpamTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1263
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;->bundleTaskParams(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1264
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isSuccess"

    .prologue
    .line 1268
    invoke-super {p0, p1}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    .line 1269
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1000(Lcom/android/mms/spam/ManageSpamMessages;)V

    .line 1274
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1261
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
