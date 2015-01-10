.class public Lcom/android/contacts/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ExportVCardActivity$1;,
        Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# static fields
.field private static mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PATH:Ljava/lang/String;

.field private final SELECTED_CONTACTS_MAP:Ljava/lang/String;

.field private final TARGET_FILE_NAME:Ljava/lang/String;

.field private export_file_name:Ljava/lang/String;

.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private mExportPath:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private volatile mProcessOngoing:Z

.field private mService:Lcom/android/contacts/vcard/VCardService;

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const-string v0, "target_file_name"

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->TARGET_FILE_NAME:Ljava/lang/String;

    .line 64
    const-string v0, "path"

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->PATH:Ljava/lang/String;

    .line 65
    const-string v0, "selected_contacts"

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->SELECTED_CONTACTS_MAP:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 131
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Lcom/android/contacts/vcard/ExportVCardActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    .line 139
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ExportVCardActivity;)Lcom/android/contacts/vcard/VCardService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method public static getEntryForExportVcard()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, array:[Ljava/lang/String;
    sget-object v7, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 391
    :cond_0
    return-object v0

    .line 377
    :cond_1
    sget-object v7, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 378
    .local v6, size:I
    new-array v0, v6, [Ljava/lang/String;

    .line 380
    sget-object v7, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 381
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 382
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 383
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 386
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, loopupKeyList:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    aput-object v7, v0, v2

    .line 389
    add-int/lit8 v2, v2, 0x1

    .line 390
    goto :goto_0
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 354
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 355
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 348
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0d00f5

    const v2, 0x7f090015

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    .line 174
    const-string v0, "target_file_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    .line 175
    const-string v0, "selected_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->export_file_name:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 187
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    .line 192
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 211
    :cond_3
    :goto_0
    return-void

    .line 196
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_5

    .line 199
    const-string v0, "VCardExport"

    const-string v1, "Failed to start vCard service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 201
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 205
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    const-string v0, "VCardExport"

    const-string v1, "Failed to connect to vCard service."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "bundle"

    .prologue
    const v6, 0x7f0d0109

    const v1, 0x7f0d0108

    const/4 v2, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 274
    sparse-switch p1, :sswitch_data_0

    .line 319
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 276
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0107

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 286
    :sswitch_1
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d02e7

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d010b

    goto :goto_1

    .line 297
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_2
    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 308
    :sswitch_3
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 309
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 310
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d02e1

    :goto_3
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0d00df

    goto :goto_3

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x7f090006 -> :sswitch_3
        0x7f090013 -> :sswitch_0
        0x7f090015 -> :sswitch_2
        0x7f0d010b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 324
    const v0, 0x7f090015

    if-ne p1, v0, :cond_0

    .line 325
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    :goto_0
    return-void

    .line 326
    .restart local p2
    :cond_0
    const v0, 0x7f090013

    if-ne p1, v0, :cond_1

    .line 327
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    const v0, 0x7f0d0107

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    const v3, 0x7f0d00f5

    const v2, 0x7f090015

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    .line 233
    const-string v0, "VCardExport"

    const-string v1, "Failed to start vCard service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 235
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 239
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    const-string v0, "VCardExport"

    const-string v1, "Failed to connect to vCard service."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 242
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "target_file_name"

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "path"

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "selected_contacts"

    sget-object v1, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 166
    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 251
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 252
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 253
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->setTargetDirectory(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->export_file_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 262
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 264
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 268
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 342
    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 360
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 361
    return-void
.end method
