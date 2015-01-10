.class public Lcom/android/contacts/VoLTEStateTracker;
.super Ljava/lang/Object;
.source "VoLTEStateTracker.java"


# instance fields
.field private isVolteEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled:Z

    return-void
.end method


# virtual methods
.method public isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 4
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 89
    const-string v2, "VoLTE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    const-string v2, "VolteStateTracker"

    const-string v3, "isVoLteEnabled : intent > extra is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isVolteEnabled(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    const-string v9, "VolteStateTracker"

    const-string v10, "isVolteEnabled api called"

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, isImsRegistered:Z
    const/4 v3, -0x1

    .line 38
    .local v3, isVolteSupported:I
    const/4 v6, -0x1

    .line 40
    .local v6, voicecall_type:I
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, salesCode:Ljava/lang/String;
    const/4 v0, 0x1

    .line 43
    .local v0, default_value:I
    const-string v9, "LGT"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v7

    .line 45
    :goto_0
    const-string v9, "true"

    const-string v10, "persist.sys.ims.reg"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 46
    const-string v9, "persist.sys.ims.volte_supported"

    const-string v10, "-1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 47
    iget-object v9, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 49
    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Is Ims registered = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVolteSupported = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Voice Call Setting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 54
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    move v2, v8

    .line 55
    .local v2, isLTEConnected:Z
    :goto_1
    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isLTEConnected - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    if-nez v6, :cond_2

    if-eqz v2, :cond_2

    .line 58
    const-string v7, "VolteStateTracker"

    const-string v9, "Volte is Enabled "

    invoke-static {v7, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_2
    return v8

    .end local v2           #isLTEConnected:Z
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    move v0, v8

    .line 43
    goto/16 :goto_0

    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    move v2, v7

    .line 54
    goto :goto_1

    .line 62
    .restart local v2       #isLTEConnected:Z
    :cond_2
    const-string v8, "VolteStateTracker"

    const-string v9, "Volte is Disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 63
    goto :goto_2
.end method

.method public startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 67
    const-string v1, "VolteStateTracker"

    const-string v2, "startTracking"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.volte.state"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, regFilter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string v0, "VolteStateTracker"

    const-string v1, "stopTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 81
    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method
