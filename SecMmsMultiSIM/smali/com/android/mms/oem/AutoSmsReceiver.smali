.class public Lcom/android/mms/oem/AutoSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoSmsReceiver.java"


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final AUTO_SMS_MESSAGE_RESTART_ACTION:Ljava/lang/String; = "com.android.mms.oem.AUTO_SMS_MESSAGE_RESTART_ACTION"

.field public static final AUTO_SMS_MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.oem.AUTO_SMS_MESSAGE_SENT_ACTION"

.field private static final TAG:Ljava/lang/String; = "AutoSmsReceiver"

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/oem/AutoSmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    sget-object v1, Lcom/android/mms/oem/AutoSmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 105
    sget-object v1, Lcom/android/mms/oem/AutoSmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/oem/AutoSmsReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 52
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "privileged"

    .prologue
    const/4 v6, 0x1

    .line 55
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoSmsSending()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v2, ""

    .line 60
    .local v2, iccId:Ljava/lang/String;
    const-string v3, "ril.noti_sim_iccid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "AutoSmsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_2

    .line 63
    const-string v3, "AutoSmsReceiver"

    const-string v4, "AutoSmsReceiver : FAILURE unable to get content resolver.  AutoSms inactive."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    if-nez p3, :cond_0

    .line 67
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    const-string v3, "AutoSmsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The card is iccId  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, autoSmsEnable:Ljava/lang/String;
    const-string v3, "Enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    if-eqz v2, :cond_0

    .line 71
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/mms/oem/AutoSms;->init(Landroid/content/Context;Z)V

    goto :goto_0

    .line 73
    .end local v1           #autoSmsEnable:Ljava/lang/String;
    :cond_3
    const-string v3, "com.android.mms.oem.AUTO_SMS_MESSAGE_SENT_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    const-class v3, Lcom/android/mms/oem/AutoSmsReceiverService;

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const-string v3, "result"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-static {p1, p2}, Lcom/android/mms/oem/AutoSmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 77
    :cond_4
    const-string v3, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    const-class v3, Lcom/android/mms/oem/AutoSmsReceiverService;

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    const-string v3, "result"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-static {p1, p2}, Lcom/android/mms/oem/AutoSmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 83
    :cond_5
    const-string v3, "com.android.mms.oem.AUTO_SMS_MESSAGE_RESTART_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1       #autoSmsEnable:Ljava/lang/String;
    const-string v3, "Enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 86
    invoke-static {p1, v6}, Lcom/android/mms/oem/AutoSms;->init(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method
