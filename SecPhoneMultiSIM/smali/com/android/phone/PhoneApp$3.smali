.class Lcom/android/phone/PhoneApp$3;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 606
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Handler : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 977
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 615
    :sswitch_1
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 625
    :sswitch_2
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f0b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 627
    const-string v11, "PhoneApp"

    const-string v12, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_1
    const-string v11, "nck_block_feature"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "1"

    const-string v12, "ril.perso_nwk_puk"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 634
    const-string v11, "PhoneApp"

    const-string v12, "network perm blocked, do not show sim depersonal panel"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :cond_2
    const-string v11, "PhoneApp"

    const-string v12, "show sim depersonal panel"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v4, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 643
    .local v4, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 656
    .end local v4           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    const-string v11, "PhoneApp"

    const-string v12, "- updating in-call notification from handler..."

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 661
    :sswitch_4
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 665
    :sswitch_5
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 670
    :sswitch_6
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/android/phone/PhoneApp;->mIsInitiatedMMI:Z

    if-eqz v11, :cond_0

    .line 671
    const-string v11, "PhoneApp"

    const-string v12, "keep MMI_INITIATE event"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 672
    iget-object v12, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iput-object v11, v12, Lcom/android/phone/PhoneApp;->mMmiInitMsg:Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 677
    :sswitch_7
    iget-object v12, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v12, v11}, Lcom/android/phone/PhoneApp;->access$200(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 681
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 682
    .local v1, ar1:Landroid/os/AsyncResult;
    iget-object v11, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 686
    .end local v1           #ar1:Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v12, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onSSInfo(Landroid/os/AsyncResult;)V
    invoke-static {v12, v11}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 695
    :sswitch_a
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 697
    .local v5, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v11, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v11, :cond_8

    .line 698
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-nez v11, :cond_7

    .line 699
    :cond_3
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_b

    .line 702
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 703
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->restoreNoiseSuppression(Landroid/content/Context;)V

    .line 705
    :cond_4
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 706
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 708
    :cond_5
    const-string v11, "extra_volume"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 709
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->restoreExtraVol(Landroid/content/Context;)V

    .line 712
    :cond_6
    sget-boolean v11, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v11, :cond_a

    .line 713
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 718
    :goto_1
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 741
    :cond_7
    :goto_2
    const-string v11, "speaker_bt_button_disable_with_headset_plug"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 742
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 746
    :cond_8
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v11}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    .line 749
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11, v5}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 751
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 753
    const-string v11, "feature_att"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 754
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_9

    .line 755
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)I

    move-result v11

    if-eqz v11, :cond_9

    .line 756
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "preferred_tty_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 757
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v12, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v11, v12}, Lcom/android/phone/PhoneApp;->access$402(Lcom/android/phone/PhoneApp;I)I

    .line 762
    :cond_9
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 763
    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 715
    :cond_a
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1

    .line 723
    :cond_b
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 724
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 728
    :cond_c
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 729
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 731
    :cond_d
    const-string v11, "extra_volume"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 732
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 735
    :cond_e
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 737
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_2

    .line 771
    .end local v5           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_b
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v12, "READY"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 775
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 776
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->finish()V

    .line 777
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v12, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v11, v12}, Lcom/android/phone/PhoneApp;->access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 779
    :cond_f
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 780
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    .line 781
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v12, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11, v12}, Lcom/android/phone/PhoneApp;->access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 793
    :sswitch_c
    const/4 v2, 0x0

    .line 794
    .local v2, inDockMode:Z
    sget v11, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_10

    sget v11, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_10

    sget v11, Lcom/android/phone/PhoneApp;->mDockState:I

    const/16 v12, 0xa

    if-eq v11, v12, :cond_10

    sget v11, Lcom/android/phone/PhoneApp;->mDockState:I

    const/16 v12, 0x9

    if-ne v11, v12, :cond_11

    .line 798
    :cond_10
    const/4 v2, 0x1

    .line 800
    :cond_11
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 804
    .restart local v5       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v11, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-nez v11, :cond_0

    .line 807
    :cond_12
    const-string v11, "restore_spk_unplugged_dock"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 808
    if-eqz v2, :cond_15

    .line 809
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 816
    :goto_3
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v11, :cond_13

    .line 817
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InVTCallScreen;->requestUpdateDockUi()V

    .line 819
    :cond_13
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_14

    .line 820
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->requestUpdateDockUi()V

    .line 822
    :cond_14
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    .line 811
    :cond_15
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_3

    .line 814
    :cond_16
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v2, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    .line 829
    .end local v2           #inDockMode:Z
    .end local v5           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_d
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 830
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)I

    move-result v8

    .line 834
    .local v8, ttyMode:I
    :goto_4
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 832
    .end local v8           #ttyMode:I
    :cond_17
    const/4 v8, 0x0

    .restart local v8       #ttyMode:I
    goto :goto_4

    .line 838
    .end local v8           #ttyMode:I
    :sswitch_e
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 842
    :sswitch_f
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 845
    :sswitch_10
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 848
    :sswitch_11
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    .line 849
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 852
    :sswitch_12
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    .line 853
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    .line 856
    :sswitch_13
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "surface_palm_touch"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 858
    .local v10, val:I
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_PALM_DOWN : value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-lez v10, :cond_0

    .line 860
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_18

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notifier:[Lcom/android/phone/CallNotifier;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 861
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notifier:[Lcom/android/phone/CallNotifier;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 864
    :cond_18
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notifier:[Lcom/android/phone/CallNotifier;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 865
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notifier:[Lcom/android/phone/CallNotifier;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0

    .line 874
    .end local v10           #val:I
    :sswitch_14
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_0

    .line 875
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    goto/16 :goto_0

    .line 881
    :sswitch_15
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v11

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v11, :cond_0

    .line 882
    const-string v11, "PhoneApp"

    const-string v12, "VE: mHandler: HANDLE_MSG_READY_PLAY"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 884
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    .line 886
    :cond_19
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x11eb

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 890
    :sswitch_16
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v11

    if-nez v11, :cond_0

    .line 891
    const-string v11, "PhoneApp"

    const-string v12, "VE: mHandler: HANDLE_MSG_STOP_PLAY"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x11ec

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 893
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 894
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_0

    .line 899
    :sswitch_17
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v11

    if-nez v11, :cond_0

    .line 900
    const-string v11, "PhoneApp"

    const-string v12, "VE: mHandler: HANDLE_MSG_MEDIA_ERROR"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x11ec

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 902
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 903
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_0

    .line 909
    :sswitch_18
    const-string v11, "ManualSelectionReceiver"

    const-string v12, "Selection Automatic Done "

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    :sswitch_19
    const-string v11, "PhoneApp"

    const-string v12, "EVENT_GET_PREFERRED_NETWORK "

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 914
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 915
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v9, 0x0

    .line 916
    .local v9, type:I
    if-nez v0, :cond_1a

    .line 917
    const-string v11, "PhoneApp"

    const-string v12, "ar is null...."

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 920
    :cond_1a
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1b

    .line 921
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x0

    aget v9, v11, v12

    .line 922
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get preferred network type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    packed-switch v9, :pswitch_data_0

    .line 937
    const-string v11, "ril.roaming.networkmode"

    const-string v12, "AUTO"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :goto_5
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ril.roaming.networkmode"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :cond_1b
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get preferred network type, exception="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    :pswitch_0
    const-string v11, "ril.roaming.networkmode"

    const-string v12, "GSM"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 934
    :pswitch_1
    const-string v11, "ril.roaming.networkmode"

    const-string v12, "WCDMA"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 946
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v9           #type:I
    :sswitch_1a
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1000()Z

    move-result v11

    if-nez v11, :cond_0

    .line 947
    const-string v11, "PhoneApp"

    const-string v12, " EVENT_DATA_ROAM_ACCESS Show Toast"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->ShowDataRoamingToast()V

    .line 949
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$1002(Z)Z

    goto/16 :goto_0

    .line 953
    :sswitch_1b
    const-string v11, "PhoneApp"

    const-string v12, " EVENT_DATA_ROAMING_DENY Notify!"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showAllowDataAccess()V

    goto/16 :goto_0

    .line 958
    :sswitch_1c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    .line 959
    .local v7, set:Ljava/lang/Boolean;
    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_SET_PS_CHANNEL :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11, v7}, Lcom/android/phone/PhoneApp;->setChannel(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 964
    .end local v7           #set:Ljava/lang/Boolean;
    :sswitch_1d
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 965
    .local v6, serviceState:I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isGlobalPopupDisplayed()Z
    invoke-static {v11}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 966
    const-string v11, "PhoneApp"

    const-string v12, "GlobalNetworkSelectAlertDialog is start"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    .local v3, intent:Landroid/content/Intent;
    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.GlobalNetworkSelectAlertDialog"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    const/high16 v11, 0x1000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 970
    iget-object v11, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11, v3}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_1
        0x14 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x18 -> :sswitch_13
        0x19 -> :sswitch_14
        0x1a -> :sswitch_18
        0x1d -> :sswitch_1c
        0x1f -> :sswitch_2
        0x21 -> :sswitch_1a
        0x22 -> :sswitch_1b
        0x23 -> :sswitch_1d
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x46 -> :sswitch_9
        0x2bc -> :sswitch_19
        0x11ea -> :sswitch_15
        0x11ec -> :sswitch_16
        0x11f1 -> :sswitch_17
    .end sparse-switch

    .line 929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
