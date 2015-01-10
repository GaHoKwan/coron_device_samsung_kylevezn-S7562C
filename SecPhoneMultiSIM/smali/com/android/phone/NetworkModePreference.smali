.class public Lcom/android/phone/NetworkModePreference;
.super Landroid/preference/ListPreference;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;,
        Lcom/android/phone/NetworkModePreference$MyHandler2;,
        Lcom/android/phone/NetworkModePreference$MyHandler;
    }
.end annotation


# static fields
.field private static sNetworkTypeSim0:I

.field private static sNetworkTypeSim1:I

.field private static sNetworkTypeSim2:I

.field private static sSetEnabledFlag:Z


# instance fields
.field private mActivePhone:I

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnManager:Landroid/net/MultiSimConnectivityManager;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mFailDialog:Landroid/app/AlertDialog;

.field private mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

.field private mIsDisconnectingData:Z

.field private mIsOtherPhone3G:Z

.field private mNetworkType:I

.field private mOldNetworkType:I

.field private mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneV2:[Lcom/android/internal/telephony/Phone;

.field public mPhone_call:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTheotherPhone:I

.field private selectedIndex:I

.field private summaryString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 64
    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 65
    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NetworkModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v9, 0x7f080014

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/telephony/Phone;

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    .line 55
    iput v6, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    .line 58
    iput v6, p0, Lcom/android/phone/NetworkModePreference;->mTheotherPhone:I

    .line 60
    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    .line 61
    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mPhone_call:Z

    .line 62
    iput v5, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    .line 81
    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    .line 83
    iput v5, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 90
    new-instance v4, Lcom/android/phone/NetworkModePreference$1;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkModePreference$1;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 371
    new-instance v4, Lcom/android/phone/NetworkModePreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkModePreference$2;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 538
    new-instance v4, Lcom/android/phone/NetworkModePreference$8;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkModePreference$8;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    .line 135
    const-string v4, "V2"

    const-string v5, "V2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const-string v4, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkModePreference() : SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v4, "NetworkModePreference"

    const-string v5, "SEC_PRODUCT_FEATURE_COMMON_USE_MULTISIM true"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v3, 0x0

    .local v3, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    aput-object v5, v4, v3

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v4, Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-direct {v4, p0, v8}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 146
    new-instance v4, Lcom/android/phone/NetworkModePreference$MyHandler2;

    invoke-direct {v4, p0, v8}, Lcom/android/phone/NetworkModePreference$MyHandler2;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    .line 156
    :cond_1
    new-instance v1, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;-><init>(Lcom/android/phone/NetworkModePreference;)V

    .line 157
    .local v1, mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "action.ButtonEnable"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput v4, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    .line 164
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v1           #mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;
    .end local v3           #simSlotNum:I
    :cond_2
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 171
    :goto_1
    const-string v4, "network_mode_list_lte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 172
    const-string v4, "remove_network_mode_gsm_only"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 174
    const v4, 0x7f08001f

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 206
    :goto_2
    const-string v4, "V2"

    const-string v5, "V2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 207
    new-instance v4, Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-direct {v4, p0, v8}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    .line 209
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 210
    .local v2, phoneType:I
    const-string v4, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 211
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-ne v2, v7, :cond_e

    .line 212
    const-string v4, "NetworkModePreference"

    const-string v5, "get TELEPHONY_SERVICE_2"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone2"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 217
    :goto_3
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 219
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 221
    .end local v2           #phoneType:I
    :cond_3
    return-void

    .line 167
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_1

    .line 175
    :cond_5
    const-string v4, "remove_network_mode_wcdma_only"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 176
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 177
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 178
    :cond_6
    const-string v4, "remove_network_mode_lte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 179
    invoke-virtual {p0, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 180
    const v4, 0x7f080015

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 181
    :cond_7
    const-string v4, "cust_network_sel_menu4_orange"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    const v4, 0x7f080022

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 183
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 184
    :cond_8
    const-string v4, "cust_network_sel_menu4_vodafone"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 185
    const v4, 0x7f080026

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 186
    const v4, 0x7f080027

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 188
    :cond_9
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 189
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 191
    :cond_a
    const-string v4, "network_mode_list_dcm_lte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 192
    const v4, 0x7f08001a

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 193
    const v4, 0x7f08001b

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 195
    :cond_b
    const-string v4, "remove_network_mode_gsm_only"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 196
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 197
    const v4, 0x7f080019

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 198
    :cond_c
    const-string v4, "remove_network_mode_wcdma_only"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 199
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 200
    const v4, 0x7f080017

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 202
    :cond_d
    invoke-virtual {p0, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 203
    const v4, 0x7f080015

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 215
    .restart local v2       #phoneType:I
    :cond_e
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkModePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeDataService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return p1
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    return p0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/phone/NetworkModePreference;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/phone/NetworkModePreference;)Landroid/net/MultiSimConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkModePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/NetworkModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->selectedIndex:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->selectedIndex:I

    return p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private changeDataService()V
    .locals 3

    .prologue
    .line 386
    const-string v0, "NetworkModePreference"

    const-string v1, "Change data service network"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v0, "persist.sys.dataprefer.simid"

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sk.action.dataButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    return-void

    .line 390
    :cond_0
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    goto :goto_0

    .line 393
    :cond_1
    const-string v0, "NetworkModePreference"

    const-string v1, "switchToSim3DataNetwork"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeNetworkType()V
    .locals 9

    .prologue
    const v8, 0x1040014

    const v7, 0x1040009

    const/4 v6, 0x0

    const v5, 0x1040013

    const/4 v4, 0x1

    .line 424
    const-string v1, "V2"

    const-string v2, "V2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 425
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    if-nez v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MultiSimConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    .line 435
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 436
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    .line 520
    :cond_3
    :goto_0
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 536
    :goto_1
    return-void

    .line 437
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 438
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-nez v1, :cond_6

    .line 439
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    .line 440
    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, dataPrefered:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v1, v2, :cond_5

    .line 442
    const-string v1, "NetworkModePreference"

    const-string v2, "Don\'t need change data service network, already activePhone is dataPrefered SIM."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0120

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0121

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkModePreference$4;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$4;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkModePreference$3;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$3;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 455
    .end local v0           #dataPrefered:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_7

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-eqz v1, :cond_7

    .line 456
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e07b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkModePreference$5;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$5;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 477
    :cond_7
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-nez v1, :cond_3

    .line 478
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e07b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkModePreference$7;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$7;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkModePreference$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkModePreference$6;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 524
    :cond_8
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 525
    invoke-virtual {p0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 527
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 529
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    :cond_9
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 242
    :cond_0
    return-void
.end method

.method private setNetworkType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 399
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivePhone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput v0, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    .line 401
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-nez v0, :cond_0

    .line 402
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 403
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 404
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 405
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.ButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    .line 420
    return-void

    .line 406
    :cond_0
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v0, v3, :cond_1

    .line 407
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 408
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 409
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 410
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 412
    :cond_1
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 413
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 414
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 415
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndSetEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndSetEnabled()\t\tmActivePhone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sSetEnabledFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    if-nez v0, :cond_2

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 248
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    #calls: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$500(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v0, v3, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    #calls: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$500(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    #calls: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$500(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getPreferredNetworkType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    const-string v1, "V2"

    const-string v2, "V2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "NetworkModePreference"

    const-string v2, "first\t Activephone\tmHandler"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 270
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    .line 271
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    if-eqz v1, :cond_3

    .line 272
    const-string v1, "NetworkModePreference"

    const-string v2, "first\t Otherphone\t mHandler"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 274
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-eq v0, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v0           #simSlotNum:I
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 284
    :cond_3
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .parameter "positiveResult"

    .prologue
    const v8, 0x1010355

    const v7, 0x7f0e02d4

    const v6, 0x7f0e02ce

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 290
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 292
    :cond_0
    const-string v1, "V2"

    const-string v2, "V2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 294
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 307
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 309
    .local v0, state:I
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 311
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v1, v5, :cond_4

    .line 313
    iput v4, p0, Lcom/android/phone/NetworkModePreference;->mTheotherPhone:I

    .line 321
    :goto_1
    const-string v1, "V2"

    const-string v2, "V2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mTheotherPhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_5

    .line 327
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e043d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 317
    :cond_4
    iput v5, p0, Lcom/android/phone/NetworkModePreference;->mTheotherPhone:I

    goto :goto_1

    .line 344
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto/16 :goto_0

    .line 348
    :cond_6
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_7

    .line 350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e043d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 357
    :cond_7
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    if-ne v0, v5, :cond_9

    .line 359
    :cond_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e011f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 366
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto/16 :goto_0
.end method

.method public setNetworkModePreference(I)V
    .locals 5
    .parameter "activePhone"

    .prologue
    const/4 v4, 0x1

    .line 116
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    .line 117
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 118
    .local v0, phoneType:I
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 119
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v4, :cond_0

    .line 120
    const-string v1, "NetworkModePreference"

    const-string v2, "get\tTELEPHONY_SERVICE_2"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 127
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method
