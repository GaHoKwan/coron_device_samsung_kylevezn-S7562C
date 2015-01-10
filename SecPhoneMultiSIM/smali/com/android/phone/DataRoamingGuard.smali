.class public Lcom/android/phone/DataRoamingGuard;
.super Landroid/app/Activity;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DataRoamingGuard$RoamHandler;
    }
.end annotation


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingSettingsExtra:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoamHandler:Lcom/android/phone/DataRoamingGuard$RoamHandler;

.field private mRoamListener:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Lcom/android/phone/DataRoamingGuard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$1;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 119
    new-instance v0, Lcom/android/phone/DataRoamingGuard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$2;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Lcom/android/phone/DataRoamingGuard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/DataRoamingGuard$3;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    .line 257
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DataRoamingGuard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DataRoamingGuard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/DataRoamingGuard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/DataRoamingGuard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private setCdmaRoaming()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 279
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 280
    .local v0, domesticRoamCall:Z
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 284
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 285
    const/4 v2, 0x5

    .line 294
    .local v2, statusCdmaRoamingMode:I
    :goto_0
    const-string v3, "DataRoamingGuard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/DataRoamingGuard$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 296
    return-void

    .line 286
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 287
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 288
    .end local v2           #statusCdmaRoamingMode:I
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 289
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 291
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    const/16 v2, 0x8

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0
.end method

.method private setSecureRoamGuardDataValue(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 208
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 209
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "roam_guard_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "roam_guard_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    const-string v1, "roam_guard_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "roam_guard_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 222
    :cond_5
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "sprint_gsm_data_guard"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 225
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSecureRoamSettingCallValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v1, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSecureRoamSettingDataValue(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 185
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string v2, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "roam_setting_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "roam_setting_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 197
    :cond_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 199
    :cond_5
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "sprint_gsm_data_roaming"

    invoke-static {v1, p1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 202
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f04001f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    const-string v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Lcom/android/phone/DataRoamingGuard$RoamHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/DataRoamingGuard;Lcom/android/phone/DataRoamingGuard$1;)V

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/DataRoamingGuard$RoamHandler;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_roaming_settings_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data_roaming_settings_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    .line 77
    :cond_0
    const v2, 0x7f09009f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, mRoamButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, mCancelButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    const-string v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V

    .line 99
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 101
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 172
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    .line 173
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, v1}, Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    .line 175
    invoke-direct {p0}, Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-static {p0}, Lcom/android/phone/SprintPhoneExtension;->setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V

    .line 93
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 107
    return-void
.end method
