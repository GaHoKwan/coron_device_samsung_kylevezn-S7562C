.class public Lcom/android/mms/transaction/MessageBackgroundHiddenKeystringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageBackgroundHiddenKeystringReceiver.java"


# static fields
.field private static final ACTION_SEND_MMS_DB_BACKUP:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_MESSAGE_BACKGROUND_KEYSTRING"

.field private static final ACTION_SEND_SECRET_CODE:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final TAG:Ljava/lang/String; = "MessageBackgroundHiddenKeystringReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v8, 0x1000

    .line 23
    if-nez p2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, szAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 30
    const-string v6, "com.android.mms.Intent.ACTION_SEND_MESSAGE_BACKGROUND_KEYSTRING"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageDbBackupKeystring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    const-string v6, "MODE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, szMode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 35
    const-string v6, "USER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ENG"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, dbBackupIntent:Landroid/content/Intent;
    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.MessageDatabaseBackupActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const-string v6, "MODE"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    .end local v0           #dbBackupIntent:Landroid/content/Intent;
    .end local v2           #szMode:Ljava/lang/String;
    :cond_3
    const-string v6, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageDbBackupKeystring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 49
    .local v5, uriIntent:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, szUriScheme:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, szUriHost:Ljava/lang/String;
    const-string v6, "android_secret_code"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "66723646"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .restart local v0       #dbBackupIntent:Landroid/content/Intent;
    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.MessageDatabaseBackupActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    const-string v6, "MODE"

    const-string v7, "USER"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
