.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1434
    .local p3, selectedInfoHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 1435
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1426
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    .line 1436
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 1437
    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    .line 1438
    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    .line 1439
    invoke-static {p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 1440
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1479
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1480
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    .line 1481
    .local v3, prog:Landroid/app/ProgressDialog;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1482
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    .line 1484
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1486
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1487
    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1489
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1502
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 1492
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1493
    .local v0, contactId:J
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1495
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1496
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v5}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1497
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    .line 1498
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1421
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0d03cf

    const/4 v4, 0x2

    const v5, 0x7f0d03d0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1508
    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 1510
    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "progress null"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :goto_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 1524
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    if-ne v0, v4, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1528
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    if-ne v0, v1, :cond_5

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0d03d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1536
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1537
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1538
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4, v6, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    .line 1569
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1577
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1578
    return-void

    .line 1512
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1513
    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "progress.get null"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1516
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "DeleteTask - onPostExecute : Exception occured"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1532
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0d03d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1541
    :cond_6
    const v0, 0x7f0d035b

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1545
    :cond_7
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    if-ne v0, v4, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1549
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    if-ne v0, v1, :cond_8

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0d03d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1557
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1558
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1559
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4, v6, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1553
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0d03d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1562
    :cond_9
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10000b

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1564
    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 1572
    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1421
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1445
    const v0, 0x7f0d0249

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1447
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1448
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1449
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1451
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1452
    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1466
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1473
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1474
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1421
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method
