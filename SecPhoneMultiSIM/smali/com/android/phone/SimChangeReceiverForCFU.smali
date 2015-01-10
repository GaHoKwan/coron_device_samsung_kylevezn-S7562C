.class public Lcom/android/phone/SimChangeReceiverForCFU;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeReceiverForCFU.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 24
    const-string v3, "SimChangeReceiverForCFU"

    const-string v4, "SimChangeReceiverForCFU_onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 28
    .local v1, mApp:Lcom/android/phone/PhoneApp;
    const-string v3, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, "simSlot"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 30
    .local v2, simCardIdforCfi:I
    const-string v3, "SimChangeReceiverForCFU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimChangeReceiverForCFU_onReceive_Action_simCardIdforCfi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-nez v2, :cond_1

    .line 33
    iget-object v3, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3, v6, v7}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    .line 38
    .end local v2           #simCardIdforCfi:I
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v2       #simCardIdforCfi:I
    :cond_1
    iget-object v3, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3, v6, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    goto :goto_0
.end method
