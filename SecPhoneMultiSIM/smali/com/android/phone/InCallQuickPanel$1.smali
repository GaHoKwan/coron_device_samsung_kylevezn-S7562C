.class final Lcom/android/phone/InCallQuickPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v11, "InCallQuickPanel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Action: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 68
    .local v6, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v3, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 70
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    const-string v11, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 72
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 73
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v10

    .line 77
    .local v10, showScreenIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v6, v10}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v10           #showScreenIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v10

    .restart local v10       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .line 78
    .end local v10           #showScreenIntent:Landroid/content/Intent;
    :cond_2
    const-string v11, "com.android.phone.MUTE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v8, 0x1

    .line 80
    .local v8, requestedMuteState:Z
    :goto_2
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 83
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 84
    :cond_3
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_1

    .line 79
    .end local v8           #requestedMuteState:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 86
    :cond_5
    const-string v11, "com.android.phone.SPEAKER"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 87
    const-string v11, "audio"

    invoke-virtual {v6, v11}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 88
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v9, 0x1

    .line 90
    .local v9, requestedSpeakerState:Z
    :goto_3
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 91
    .local v2, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 92
    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 94
    :cond_6
    const/4 v11, 0x1

    invoke-static {v6, v9, v11}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 96
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 97
    :cond_7
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_1

    .line 88
    .end local v2           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v9           #requestedSpeakerState:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 100
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_9
    const-string v11, "com.android.phone.UNHOLD"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 101
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 102
    :cond_a
    const-string v11, "com.android.phone.END"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 103
    const/4 v7, 0x0

    .line 104
    .local v7, phoneType:I
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 106
    const/4 v11, 0x2

    if-ne v7, v11, :cond_b

    .line 107
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_1

    .line 108
    :cond_b
    const/4 v11, 0x1

    if-eq v7, v11, :cond_c

    const/4 v11, 0x3

    if-eq v7, v11, :cond_c

    const/4 v11, 0x5

    if-ne v7, v11, :cond_d

    .line 110
    :cond_c
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 112
    :cond_d
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 114
    .end local v7           #phoneType:I
    :cond_e
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 115
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_10

    .line 116
    const-string v11, "notification"

    invoke-virtual {v6, v11}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 117
    .local v5, mNotificationManager:Landroid/app/NotificationManager;
    const-string v11, "com.android.phone"

    const/4 v12, 0x2

    invoke-virtual {v5, v11, v12}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v4

    .line 119
    .local v4, mNotificationInfo:Landroid/app/NotificationInfo;
    if-eqz v4, :cond_f

    .line 120
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_1

    .line 122
    :cond_f
    const-string v11, "InCallQuickPanel"

    const-string v12, "IN_CALL_NOTIFICATION is not registered yet.. ignoring updateInCallNotification()"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 125
    .end local v4           #mNotificationInfo:Landroid/app/NotificationInfo;
    .end local v5           #mNotificationManager:Landroid/app/NotificationManager;
    :cond_10
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_1
.end method
