.class public Lcom/android/mms/transaction/MmsSystemEventReceiver2;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsSystemEventReceiver2"

.field private static bFilterAttached:Z

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->bFilterAttached:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 91
    sget-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->bFilterAttached:Z

    if-nez v1, :cond_3

    .line 92
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "Mms/MmsSystemEventReceiver2"

    const-string v2, "registerForConnectionStateChanges"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver2;

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiver2;

    invoke-direct {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver2;

    .line 103
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver2;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->bFilterAttached:Z

    .line 110
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    :goto_0
    return-void

    .line 106
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "Mms/MmsSystemEventReceiver2"

    const-string v2, "Filter attached"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "Mms/MmsSystemEventReceiver2"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver2;

    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver2;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->bFilterAttached:Z

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static wakeUpService(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "Mms/MmsSystemEventReceiver2"

    const-string v1, "wakeUpService: start transaction service2 ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const-string v3, "Mms/MmsSystemEventReceiver2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, state:Ljava/lang/String;
    const-string v3, "simSlot"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, simSlot:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const-string v3, "Mms/MmsSystemEventReceiver2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANY_DATA_STATE event received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-static {p1, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->wakeUpService(Landroid/content/Context;I)V

    .line 88
    .end local v1           #simSlot:I
    .end local v2           #state:Ljava/lang/String;
    :cond_2
    return-void
.end method
