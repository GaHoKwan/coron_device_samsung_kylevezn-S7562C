.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCreateButton:Landroid/widget/Button;

.field mEndcallBottomFrame:Landroid/view/View;

.field private mIpCallButton:Landroid/widget/Button;

.field private mIsOnehandOn:Z

.field private mLeftArrow:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mViewButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallButtonFrame:Landroid/view/View;

.field private mVoiceCallButtonSim1:Landroid/widget/Button;

.field private mVoiceCallButtonSim1Frame:Landroid/view/View;

.field private mVoiceCallButtonSim2:Landroid/widget/Button;

.field private mVoiceCallButtonSim2Frame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 76
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 78
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method private blockEndAnimation()V
    .locals 3

    .prologue
    .line 487
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 488
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 489
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 490
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setBlockEndAnimation(Z)V

    .line 492
    :cond_0
    return-void
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "call"

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 820
    const/4 v1, 0x0

    .line 826
    :goto_0
    return-object v1

    .line 822
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 823
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 824
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 826
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method private getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .parameter "conn"

    .prologue
    .line 831
    const/4 v1, 0x0

    .line 832
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 834
    .local v0, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 856
    :goto_0
    return-object v1

    .line 842
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 844
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 847
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 852
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 853
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 861
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 865
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 866
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 870
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableAllButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 463
    :cond_0
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    const-string v0, "support_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 473
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 484
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 499
    .local v3, id:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick(View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 500
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 501
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_0

    .line 503
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 506
    :cond_0
    if-nez v1, :cond_2

    .line 507
    const-string v9, "onClick : call is null"

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 513
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_3

    .line 514
    const-string v9, "onClick : connection is null"

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 518
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, phoneNumber:Ljava/lang/String;
    const-string v9, "roaming_auto_dial"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 521
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    .line 522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 523
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 524
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 525
    .local v6, isIncome:Ljava/lang/Boolean;
    invoke-static {v8, v6}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    .line 529
    .end local v6           #isIncome:Ljava/lang/Boolean;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 533
    :cond_4
    const-string v9, "support_multisim_ver2"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_a

    .line 534
    packed-switch v3, :pswitch_data_0

    .line 681
    :pswitch_0
    const-string v9, "EndCallButtonsView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick: unexpected click: View "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    :cond_5
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 538
    :pswitch_1
    if-eqz v8, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 540
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 542
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 544
    .local v7, o:Ljava/lang/Object;
    if-eqz v7, :cond_6

    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_6

    .line 545
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #o:Ljava/lang/Object;
    iput-object v7, v9, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 547
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 549
    .local v5, intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 550
    const-string v9, "simSlot"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 557
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_2
    if-eqz v8, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 559
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 561
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 563
    .restart local v7       #o:Ljava/lang/Object;
    if-eqz v7, :cond_7

    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_7

    .line 564
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #o:Ljava/lang/Object;
    iput-object v7, v9, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 567
    :cond_7
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 569
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    const-string v9, "simSlot"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 578
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_3
    if-eqz v8, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 580
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 581
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 583
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    const-string v9, "ipcall"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 585
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 590
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_4
    if-eqz v8, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 592
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 594
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 596
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "videocall"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 598
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 603
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_5
    if-eqz v8, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 605
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    const-string v10, "sms"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 607
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 609
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 613
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_6
    if-eqz v8, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 615
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 618
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 620
    const-string v9, "sip"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    :goto_2
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 623
    :cond_8
    const-string v9, "phone"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 632
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_7
    if-eqz v8, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 634
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT_OR_EDIT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 639
    const-string v9, "sip"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :goto_3
    const-string v9, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 650
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 642
    :cond_9
    const-string v9, "phone"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v9, "phone_type"

    const/4 v10, 0x2

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 654
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_8
    if-eqz v8, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 656
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 657
    .restart local v7       #o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_1

    move-object v4, v7

    .line 658
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 659
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v9, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, bufId:Ljava/lang/StringBuffer;
    iget-wide v9, v4, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 663
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x3000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 665
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 670
    .end local v0           #bufId:Ljava/lang/StringBuffer;
    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #o:Ljava/lang/Object;
    :pswitch_9
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 675
    :pswitch_a
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 685
    :cond_a
    packed-switch v3, :pswitch_data_1

    .line 809
    :pswitch_b
    const-string v9, "EndCallButtonsView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick: unexpected click: View "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    :pswitch_c
    if-eqz v8, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 689
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 691
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 693
    .restart local v7       #o:Ljava/lang/Object;
    if-eqz v7, :cond_b

    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_b

    .line 694
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #o:Ljava/lang/Object;
    iput-object v7, v9, Lcom/android/phone/PhoneApp;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 697
    :cond_b
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 699
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 700
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 706
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_d
    if-eqz v8, :cond_1

    .line 707
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 708
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 709
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 711
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    const-string v9, "ipcall"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 718
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_e
    if-eqz v8, :cond_1

    .line 719
    invoke-direct {p0}, Lcom/android/phone/EndCallButtonsView;->blockEndAnimation()V

    .line 720
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 722
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 724
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "videocall"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 726
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 731
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_f
    if-eqz v8, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 733
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    const-string v10, "sms"

    const/4 v11, 0x0

    invoke-static {v10, v8, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 735
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 737
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 741
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_10
    if-eqz v8, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 743
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 746
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 748
    const-string v9, "sip"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :goto_4
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 756
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 751
    :cond_c
    const-string v9, "phone"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 760
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_11
    if-eqz v8, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 762
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT_OR_EDIT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 765
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 767
    const-string v9, "sip"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    :goto_5
    const-string v9, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 778
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 770
    :cond_d
    const-string v9, "phone"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v9, "phone_type"

    const/4 v10, 0x2

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 782
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_12
    if-eqz v8, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 784
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 785
    .restart local v7       #o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_1

    move-object v4, v7

    .line 786
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .line 787
    .restart local v4       #info:Lcom/android/internal/telephony/CallerInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v9, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 788
    .restart local v0       #bufId:Ljava/lang/StringBuffer;
    iget-wide v9, v4, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 791
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v9, 0x3000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 793
    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 798
    .end local v0           #bufId:Ljava/lang/StringBuffer;
    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #o:Ljava/lang/Object;
    :pswitch_13
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 800
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 803
    :pswitch_14
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 804
    iget-object v9, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x7f090120
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 685
    :pswitch_data_1
    .packed-switch 0x7f090120
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 102
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    .line 103
    const-string v0, "end_call_two_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v3, 0x7f02006d

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    :cond_0
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 112
    const-string v0, "support_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-lt v0, v5, :cond_1c

    .line 113
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    .line 114
    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    .line 115
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    .line 116
    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    .line 117
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    .line 119
    const-string v0, "end_call_two_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v3, 0x7f020070

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 134
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 140
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 145
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 168
    :cond_4
    :goto_1
    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_5
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_6
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_7
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_8
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1f

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    .line 179
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    if-eqz v0, :cond_b

    .line 180
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_a
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_c

    .line 187
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 188
    :cond_c
    const-string v0, "support_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-lt v0, v5, :cond_20

    .line 189
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    :cond_d
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    :cond_f
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :cond_10
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    :cond_11
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    :cond_12
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    :cond_13
    const-string v0, "support_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtils;->checkDualSim()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 205
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    :cond_14
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    :cond_15
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 212
    const-string v0, "support_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-lt v0, v5, :cond_16

    .line 214
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 215
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mEndcallBottomFrame:Landroid/view/View;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    :cond_16
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    .line 219
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    .line 220
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_17
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    .line 248
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    const v1, 0x7f020410

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 250
    :cond_18
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    .line 254
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_19
    return-void

    .line 136
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 147
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 151
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    .line 152
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 158
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1f
    move v0, v2

    .line 178
    goto/16 :goto_2

    .line 192
    :cond_20
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 29
    .parameter "cm"

    .prologue
    .line 259
    const-string v24, "updateState..."

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 266
    .local v5, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 270
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/EndCallButtonsView;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v12

    .line 272
    .local v12, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v12, :cond_2b

    .line 273
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v16

    .line 274
    .local v16, isEmergencyCall:Z
    const-string v24, "feature_chn"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 275
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 276
    .local v4, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->phoneMgr:[Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v13

    .line 277
    .local v13, currSimId:I
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v16

    .line 278
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isEmergencyCall : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 281
    .end local v4           #app:Lcom/android/phone/PhoneApp;
    .end local v13           #currSimId:I
    :cond_1
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 282
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    const-string v24, "114"

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 283
    const-string v24, "ril.simtype"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 284
    .local v23, sSimType:Ljava/lang/String;
    const-string v24, "18"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 285
    const/16 v16, 0x1

    .line 289
    :goto_0
    const-string v24, "lock"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "missing_phone_lock"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 290
    const/16 v16, 0x1

    .line 293
    .end local v23           #sSimType:Ljava/lang/String;
    :cond_2
    if-nez v16, :cond_10

    const/4 v11, 0x1

    .line 294
    .local v11, canVoiceCall:Z
    :goto_1
    if-nez v16, :cond_11

    const/4 v6, 0x1

    .line 295
    .local v6, canIpCall:Z
    :goto_2
    if-nez v16, :cond_12

    const/4 v9, 0x1

    .line 296
    .local v9, canVideoCall:Z
    :goto_3
    if-nez v16, :cond_13

    const/4 v8, 0x1

    .line 297
    .local v8, canSendMsgButton:Z
    :goto_4
    const/4 v7, 0x0

    .line 298
    .local v7, canSaveCall:Z
    const/4 v10, 0x0

    .line 301
    .local v10, canViewContact:Z
    const/4 v14, 0x0

    .line 302
    .local v14, disableAllSendButton:Z
    const/16 v17, 0x0

    .line 304
    .local v17, isInvalidNumber:Z
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v22

    .line 306
    .local v22, presentation:I
    const-string v3, "20"

    .line 307
    .local v3, LOCK_PCW_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_pcw_enabled"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 309
    .local v18, lockPcwState:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/EndCallButtonsView;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v21

    .line 311
    .local v21, phoneNumber:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "presentation: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / isCheckInvalidNumber: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 313
    if-eqz v18, :cond_14

    const-string v24, "20"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 314
    const-string v24, "EndCallButtonsView : LOCK_PCW_ENABLED"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 315
    const/4 v14, 0x1

    .line 341
    :cond_3
    :goto_5
    if-eqz v14, :cond_4

    .line 342
    const/4 v11, 0x0

    .line 343
    const/4 v6, 0x0

    .line 344
    const/4 v9, 0x0

    .line 345
    const/4 v8, 0x0

    .line 348
    :cond_4
    const-string v24, "support_onehand_operation"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/EndCallButtonsView;->mIsOnehandOn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    const/16 v19, 0x1

    .line 350
    .local v19, mIsOnehandOptionRight:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLeftArrow:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v19, :cond_1b

    const/16 v24, 0x0

    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mRightArrow:Landroid/view/View;

    move-object/from16 v25, v0

    if-eqz v19, :cond_1c

    const/16 v24, 0x8

    :goto_8
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .end local v19           #mIsOnehandOptionRight:Z
    :cond_6
    const-string v24, "support_multisim_ver2"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_20

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonFrame:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_9
    if-eqz v11, :cond_1f

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 385
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 415
    :cond_b
    :goto_a
    const-string v24, "ip_call"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mIpCallButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v6, :cond_24

    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 422
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v8, :cond_25

    const/16 v24, 0x1

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v7, :cond_26

    const/16 v24, 0x0

    :goto_d
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v7, :cond_27

    const/16 v24, 0x0

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v10, :cond_28

    const/16 v24, 0x0

    :goto_f
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    const-string v24, "feature_chn"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 431
    if-eqz v17, :cond_d

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mViewButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    const-string v25, "video_call_disable"

    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_29

    const/16 v25, 0x0

    :goto_10
    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 440
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 441
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    :cond_e
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .end local v3           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v6           #canIpCall:Z
    .end local v7           #canSaveCall:Z
    .end local v8           #canSendMsgButton:Z
    .end local v9           #canVideoCall:Z
    .end local v10           #canViewContact:Z
    .end local v11           #canVoiceCall:Z
    .end local v14           #disableAllSendButton:Z
    .end local v16           #isEmergencyCall:Z
    .end local v17           #isInvalidNumber:Z
    .end local v18           #lockPcwState:Ljava/lang/String;
    .end local v21           #phoneNumber:Ljava/lang/String;
    .end local v22           #presentation:I
    :goto_12
    return-void

    .line 287
    .restart local v16       #isEmergencyCall:Z
    .restart local v23       #sSimType:Ljava/lang/String;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 293
    .end local v23           #sSimType:Ljava/lang/String;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 294
    .restart local v11       #canVoiceCall:Z
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 295
    .restart local v6       #canIpCall:Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 296
    .restart local v9       #canVideoCall:Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 317
    .restart local v3       #LOCK_PCW_ENABLED:Ljava/lang/String;
    .restart local v7       #canSaveCall:Z
    .restart local v8       #canSendMsgButton:Z
    .restart local v10       #canViewContact:Z
    .restart local v14       #disableAllSendButton:Z
    .restart local v17       #isInvalidNumber:Z
    .restart local v18       #lockPcwState:Ljava/lang/String;
    .restart local v21       #phoneNumber:Ljava/lang/String;
    .restart local v22       #presentation:I
    :cond_14
    sget v24, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    sget v24, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    .line 320
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 322
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 324
    :cond_15
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v20

    .line 325
    .local v20, o:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    move-object/from16 v15, v20

    .line 326
    check-cast v15, Lcom/android/internal/telephony/CallerInfo;

    .line 327
    .local v15, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v16, :cond_17

    iget-boolean v0, v15, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v24, v0

    if-nez v24, :cond_17

    const/4 v7, 0x1

    .line 328
    :goto_13
    if-nez v16, :cond_18

    iget-boolean v0, v15, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v24, v0

    if-eqz v24, :cond_18

    const/4 v10, 0x1

    .line 331
    .end local v15           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_16
    :goto_14
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 332
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 327
    .restart local v15       #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_17
    const/4 v7, 0x0

    goto :goto_13

    .line 328
    :cond_18
    const/4 v10, 0x0

    goto :goto_14

    .line 336
    .end local v15           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v20           #o:Ljava/lang/Object;
    :cond_19
    const/4 v14, 0x1

    .line 337
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 349
    :cond_1a
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 350
    .restart local v19       #mIsOnehandOptionRight:Z
    :cond_1b
    const/16 v24, 0x8

    goto/16 :goto_7

    .line 351
    :cond_1c
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 380
    .end local v19           #mIsOnehandOptionRight:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_9

    .line 390
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_a

    .line 395
    :cond_1f
    if-eqz v16, :cond_b

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    goto/16 :goto_a

    .line 400
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    if-eqz v11, :cond_23

    const/16 v24, 0x1

    :goto_15
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 402
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_22

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim2Frame:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButtonSim1Frame:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 400
    :cond_23
    const/16 v24, 0x0

    goto :goto_15

    .line 416
    :cond_24
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 424
    :cond_25
    const/16 v24, 0x0

    goto/16 :goto_c

    .line 426
    :cond_26
    const/16 v24, 0x8

    goto/16 :goto_d

    .line 427
    :cond_27
    const/16 v24, 0x8

    goto/16 :goto_e

    .line 428
    :cond_28
    const/16 v24, 0x8

    goto/16 :goto_f

    .line 438
    :cond_29
    const/16 v25, 0x8

    goto/16 :goto_10

    .line 445
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_11

    .line 455
    .end local v3           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v6           #canIpCall:Z
    .end local v7           #canSaveCall:Z
    .end local v8           #canSendMsgButton:Z
    .end local v9           #canVideoCall:Z
    .end local v10           #canViewContact:Z
    .end local v11           #canVoiceCall:Z
    .end local v14           #disableAllSendButton:Z
    .end local v16           #isEmergencyCall:Z
    .end local v17           #isInvalidNumber:Z
    .end local v18           #lockPcwState:Ljava/lang/String;
    .end local v21           #phoneNumber:Ljava/lang/String;
    .end local v22           #presentation:I
    :cond_2b
    const-string v24, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_12
.end method
