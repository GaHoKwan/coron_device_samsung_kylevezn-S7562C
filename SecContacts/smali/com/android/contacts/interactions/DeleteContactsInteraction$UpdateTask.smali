.class public Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->initPowerWaekLock(Landroid/app/Activity;)V

    .line 235
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->finishPeopleActivity()V

    return-void
.end method

.method private deleteProfile(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .parameter "target"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private finishPeopleActivity()V
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 300
    .local v0, activity:Landroid/app/Activity;
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 301
    return-void
.end method

.method private initPowerWaekLock(Landroid/app/Activity;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 238
    move-object v0, p1

    .line 239
    .local v0, context:Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 241
    .local v1, powerManager:Landroid/os/PowerManager;
    const v2, 0x20000006

    const-string v3, "UpdateTask"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 243
    return-void
.end method

.method private obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$1;-><init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 254
    .local v0, progress:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ProgressDialog;>;"
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const v2, 0x7f0d0249

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, -0x3

    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;

    invoke-direct {v4, p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;-><init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 271
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 13
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v9, 0x0

    aget-object v3, p2, v9

    .line 307
    .local v3, delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 309
    .local v0, contactSize:I
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 311
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 313
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Z

    move-result v9

    if-nez v9, :cond_4

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v6, idsBuilder:Ljava/lang/StringBuilder;
    const/16 v9, 0x32

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    if-ge v9, v10, :cond_1

    const/16 v2, 0x32

    .line 323
    .local v2, count:I
    :goto_1
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-ge v7, v2, :cond_3

    .line 324
    if-nez v7, :cond_2

    .line 325
    const-string v9, " ( "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :goto_3
    add-int v9, v5, v7

    :try_start_0
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 336
    .local v1, contactsId:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 337
    add-int v9, v5, v7

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-direct {p0, p1, v9}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->deleteProfile(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 340
    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 316
    .end local v1           #contactsId:Ljava/lang/String;
    .end local v2           #count:I
    .end local v7           #j:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v2, v9, v5

    goto :goto_1

    .line 327
    .restart local v2       #count:I
    .restart local v7       #j:I
    :cond_2
    const-string v9, " , "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 332
    :catch_0
    move-exception v8

    .line 333
    .local v8, npe:Ljava/lang/NullPointerException;
    const-string v9, "deleteContacts"

    const-string v10, "Error occured : "

    invoke-static {v9, v10, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    const/4 v9, 0x0

    .line 355
    .end local v2           #count:I
    .end local v6           #idsBuilder:Ljava/lang/StringBuilder;
    .end local v7           #j:I
    .end local v8           #npe:Ljava/lang/NullPointerException;
    :goto_4
    return-object v9

    .line 342
    .restart local v2       #count:I
    .restart local v6       #idsBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #j:I
    :cond_3
    const-string v9, " ) "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 347
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contact_id in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .end local v2           #count:I
    .end local v6           #idsBuilder:Ljava/lang/StringBuilder;
    .end local v7           #j:I
    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x32

    goto/16 :goto_0

    .line 349
    .restart local v2       #count:I
    .restart local v6       #idsBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #j:I
    :catch_1
    move-exception v4

    .line 350
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "deleteContacts"

    const-string v10, "Failed to delete contact:"

    invoke-static {v9, v10, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 355
    .end local v2           #count:I
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .end local v6           #idsBuilder:Ljava/lang/StringBuilder;
    .end local v7           #j:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_4
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 370
    .line 371
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 372
    const-string v0, "deleteContacts"

    const-string v1, "progress null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 388
    invoke-static {v4}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 391
    :cond_0
    invoke-static {v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$402(Z)Z

    .line 392
    invoke-static {v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$502(Z)Z

    .line 394
    instance-of v0, p1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_5

    .line 397
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    .line 398
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 405
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 410
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 411
    return-void

    .line 374
    :cond_3
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 375
    const-string v0, "deleteContacts"

    const-string v1, "progress.get null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 379
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string v1, "deleteContacts"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 401
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 402
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    .line 279
    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 282
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 287
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 359
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 360
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 361
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 290
    move-object v0, p1

    .line 292
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    .line 293
    .local v1, max:I
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 294
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 295
    return-void
.end method
