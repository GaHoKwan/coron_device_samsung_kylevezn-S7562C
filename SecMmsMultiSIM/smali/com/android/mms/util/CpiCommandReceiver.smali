.class public Lcom/android/mms/util/CpiCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CpiCommandReceiver.java"


# static fields
.field private static final ACTION_USBATCOMMAND_RESPONSE:Ljava/lang/String; = "android.intent.action.USBATCOMMAND_RESPONSE"

.field private static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+CPIITEST"

.field private static final REQUEST_AT_PARAM:Ljava/lang/String; = "=1,0,0"

.field private static final RESPONSE_OK:Ljava/lang/String; = "+CPITEST:1,\r\nOK\r\n"

.field private static final TAG:Ljava/lang/String; = "CpiCommandReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkMessages()Z
    .locals 9

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/util/CpiCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, -0x1

    .line 74
    .local v7, countTotal:I
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "simple"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 75
    .local v2, sAllThreadsUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 77
    .local v8, totalMessages:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/CpiCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 78
    if-eqz v8, :cond_0

    .line 79
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 82
    :cond_0
    if-eqz v8, :cond_1

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_1
    if-nez v7, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 82
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_2
    throw v0

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTemplates()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v1, Lcom/android/mms/template/TextTemplateProvider;

    iget-object v3, p0, Lcom/android/mms/util/CpiCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/mms/template/TextTemplateProvider;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, mDbHelper:Lcom/android/mms/template/TextTemplateProvider;
    const/4 v2, -0x1

    .line 94
    .local v2, templateCount:I
    sget-object v3, Lcom/android/mms/template/TextTemplateProvider;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v4, v4}, Lcom/android/mms/template/TextTemplateProvider;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_0
    if-eqz v2, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sendResponse()V
    .locals 3

    .prologue
    .line 104
    const-string v1, "CpiCommandReceiver"

    const-string v2, "sendResponse()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBATCOMMAND_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "response"

    const-string v2, "+CPITEST:1,\r\nOK\r\n"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/android/mms/util/CpiCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    const-string v3, "CpiCommandReceiver"

    const-string v4, "Received USBATCOMMAND_REQUEST"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/mms/util/CpiCommandReceiver;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    .local v1, data:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 52
    const-string v3, "CpiCommandReceiver"

    const-string v4, "There is no extras"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v3, "command"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, command:Ljava/lang/String;
    const-string v3, "param"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, param:Ljava/lang/String;
    const-string v3, "CpiCommandReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USBATCOMMAND_REQUEST: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "AT+CPIITEST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "=1,0,0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/CpiCommandReceiver;->checkTemplates()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/mms/util/CpiCommandReceiver;->checkMessages()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const-string v3, "CpiCommandReceiver"

    const-string v4, "CPI Check: OK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/android/mms/util/CpiCommandReceiver;->sendResponse()V

    goto :goto_0

    .line 67
    :cond_2
    const-string v3, "CpiCommandReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invaild Command & Param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
