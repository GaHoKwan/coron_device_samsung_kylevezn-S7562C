.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimMobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;Landroid/net/MultiSimMobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;-><init>(Landroid/net/MultiSimMobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v5

    .line 110
    .local v5, simSlot:I
    const-string v7, "simSlot"

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v9

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 111
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    #getter for: Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I
    invoke-static {v7}, Landroid/net/MultiSimMobileDataStateTracker;->access$100(Landroid/net/MultiSimMobileDataStateTracker;)I

    move-result v7

    if-eq v7, v5, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 118
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, apnType:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 131
    const-class v7, Lcom/android/internal/telephony/Phone$DataState;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone$DataState;

    .line 133
    .local v6, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, reason:Ljava/lang/String;
    const-string v7, "apn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, apnName:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v9, "networkRoaming"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 141
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v9, v7, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v7, "networkUnvailable"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 148
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v7, v6, :cond_6

    .line 149
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iput-object v6, v7, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 150
    sget-object v7, Landroid/net/MultiSimMobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v7}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 153
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v7, v8}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 156
    :cond_2
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8, v4, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v7, v8

    .line 141
    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8, v4, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :pswitch_2
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8, v4, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :pswitch_3
    iget-object v8, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v7, "linkProperties"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    iput-object v7, v8, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 173
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v7, :cond_4

    .line 174
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v8, "CONNECTED event did not supply link properties."

    invoke-virtual {v7, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 175
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    iput-object v8, v7, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 177
    :cond_4
    iget-object v8, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v7, "linkCapabilities"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkCapabilities;

    iput-object v7, v8, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 179
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v7, :cond_5

    .line 180
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v8, "CONNECTED event did not supply link capabilities."

    invoke-virtual {v7, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 181
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v8, Landroid/net/LinkCapabilities;

    invoke-direct {v8}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v8, v7, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 183
    :cond_5
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8, v4, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_6
    const-string v7, "linkPropertiesChanged"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 189
    iget-object v8, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v7, "linkProperties"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    iput-object v7, v8, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 190
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v7, :cond_7

    .line 191
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v8, "No link property in LINK_PROPERTIES change event."

    invoke-virtual {v7, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 192
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    iput-object v8, v7, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 195
    :cond_7
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v8, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v8, v8, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    iget-object v9, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v9, v9, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v4, v9}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v9, v9, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 199
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 202
    .end local v3           #msg:Landroid/os/Message;
    :cond_8
    const-string v7, "nwTypeChanged"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v7, :cond_0

    .line 203
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v8, 0x7

    iget-object v9, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v9, v9, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 205
    .restart local v3       #msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 209
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 211
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2       #apnType:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .restart local v4       #reason:Ljava/lang/String;
    const-string v7, "apn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1       #apnName:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8, v4, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    iget-object v8, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Messenger;

    iput-object v7, v8, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    .line 231
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 232
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v7, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v7, v7, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v8, v8, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v9, v9, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
