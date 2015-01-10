.class public Lcom/samsung/mms/content/MmsPartExportService;
.super Landroid/app/IntentService;
.source "MmsPartExportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/content/MmsPartExportService$1;,
        Lcom/samsung/mms/content/MmsPartExportService$DisplayToast;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsPartExportService"


# instance fields
.field private mToastHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "attachment_export"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(Ljava/lang/CharSequence;I)V

    .line 98
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/mms/content/MmsPartExportService;->mToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/mms/content/MmsPartExportService$DisplayToast;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/mms/content/MmsPartExportService$DisplayToast;-><init>(Lcom/samsung/mms/content/MmsPartExportService;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/content/MmsPartExportService;->mToastHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const v11, 0x7f0a00fb

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 35
    const-string v7, "msg_uri"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 36
    .local v3, msgUri:Landroid/net/Uri;
    const-string v7, "part_uri"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 37
    .local v5, partUri:Landroid/net/Uri;
    const-string v7, "overwrite"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 40
    .local v4, overwrite:Z
    const-string v7, "filename"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, fileName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 43
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, fallback:Ljava/lang/String;
    invoke-static {p0, v5, v3, v1}, Lcom/samsung/mms/content/MmsPartExport;->generateFileName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .end local v1           #fallback:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 51
    const-string v7, "Mms/MmsPartExportService"

    const-string v8, "onHandleIntent: fileName is NULL"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v11, v10}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    .line 88
    :goto_1
    return-void

    .line 46
    :cond_0
    invoke-static {v2}, Lcom/samsung/mms/content/MmsPartExport;->normalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 56
    :cond_1
    sget-object v7, Lcom/samsung/mms/content/MmsPartExport;->STORE_DIR:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/samsung/mms/content/MmsPartExport;->getFileStreamPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 60
    if-nez v4, :cond_2

    .line 61
    invoke-static {p0, v3, v5, v2}, Lcom/samsung/mms/content/MmsPartExport;->queueRenameDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    sget-object v7, Lcom/samsung/mms/content/MmsPartExport;->STORE_DIR:Ljava/lang/String;

    invoke-static {p0, v5, v0, v7}, Lcom/samsung/mms/content/MmsPartExport;->copyMedia(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    move-result-object v6

    .line 68
    .local v6, result:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    sget-object v7, Lcom/samsung/mms/content/MmsPartExportService$1;->$SwitchMap$com$samsung$mms$content$MmsPartExport$ExportResult:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 70
    :pswitch_0
    const v7, 0x7f0a00fa

    invoke-direct {p0, v7, v10}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto :goto_1

    .line 74
    :pswitch_1
    invoke-direct {p0, v11, v9}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto :goto_1

    .line 77
    :pswitch_2
    const v7, 0x7f0a0175

    invoke-direct {p0, v7, v9}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto :goto_1

    .line 80
    :pswitch_3
    const v7, 0x7f0a0195

    invoke-direct {p0, v7, v9}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto :goto_1

    .line 83
    :pswitch_4
    const v7, 0x7f0a018f

    invoke-direct {p0, v7, v9}, Lcom/samsung/mms/content/MmsPartExportService;->showToast(II)V

    goto :goto_1

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
