.class public Lcom/android/mms/oem/AutoSmsReceiverService;
.super Landroid/app/Service;
.source "AutoSmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final AUTO_SMS_MESSAGE_RESTART_ACTION:Ljava/lang/String; = "com.android.mms.oem.AUTO_SMS_MESSAGE_RESTART_ACTION"

.field public static final AUTO_SMS_MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.oem.AUTO_SMS_MESSAGE_SENT_ACTION"

.field private static final TAG:Ljava/lang/String; = "AutoSmsReceiverService"


# instance fields
.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mms/oem/AutoSmsReceiverService;->handleAutoSmsSent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mms/oem/AutoSmsReceiverService;->handleAutoSmsAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method private handleAutoSmsAlarm(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 138
    const-string v2, "AutoSmsReceiverService"

    const-string v3, "[handleAutoSmsAlarm]"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/android/mms/oem/AutoSms;->getInstance()Lcom/android/mms/oem/AutoSms;

    move-result-object v0

    .line 140
    .local v0, autoSms:Lcom/android/mms/oem/AutoSms;
    const-string v2, "AutoSmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleAutoSmsAlarm] autoSms = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const-string v2, "AutoSmsReceiverService"

    const-string v3, "[handleAutoSmsAlarm] process timer alarm!!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/android/mms/oem/AutoSms;->processAlarm()V

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v2, "AutoSms"

    const-string v3, "AutoSmsReceiverService [handleAutoSmsAlarm] restart!!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/oem/AutoSmsReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v1, restart:Landroid/content/Intent;
    const-string v2, "com.android.mms.oem.AUTO_SMS_MESSAGE_RESTART_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleAutoSmsSent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 128
    const-string v0, "AutoSmsReceiverService"

    const-string v1, "[handleAutoSmsSent]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    const-string v0, "AutoSmsReceiverService"

    const-string v1, "[handleAutoSmsSent] RESULT_OK"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "Disabled"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->setAutoSmsEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoSmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 66
    iget-object v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

    invoke-direct {v1, p0}, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/oem/AutoSmsReceiverService;)V

    iput-object v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceHandler:Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v1, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceHandler:Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 87
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mResultCode:I

    .line 77
    iget-object v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceHandler:Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 79
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/android/mms/oem/AutoSmsReceiverService;->mServiceHandler:Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
